class TargetsController < ApplicationController
  def new
    @target = Target.new
  end

  def create
    @target = Target.new(trget_params)
    
    if @target.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @target = Target.find(params[:id])
  end

  def update
    @target = Target.find(params[:id])
    if @target.update(target_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

    def target_params
      params.require(:target).permit(:date, :time, :price, :transactions)
    end
end
