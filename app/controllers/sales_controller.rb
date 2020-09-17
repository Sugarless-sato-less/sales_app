class SalesController < ApplicationController
  include SalesHelper
  def home
    @data_of_today = data_of_a_day(Date.today)
    @sample_day = data_of_a_day(Date.yesterday)
    gon.data_of_today = @data_of_today
    
    # @date_of_today_target = data_of_target()
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.create(sale_params)
  end

  def edit
    @sale = Sale.find(params[:id])
    
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update(sale_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
  private

    def sale_params
      params.require(:sale).permit(:price, :transactions)
    end
  
end
