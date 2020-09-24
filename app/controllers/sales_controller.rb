class SalesController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :home]
  include SalesHelper
  include SessionsHelper
  def home
    @today = data_of_a_day(Date.today)
    gon.today = @today
    binding.irb
    @target = data_of_target()
    gon.target = @target.sort_by { |a| a[:time] }
    @any_day = data_of_a_day()
    gon.any = Sale.new
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
      params.require(:sale).permit(:price, :transactions, :total)
    end

    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end
  
end
