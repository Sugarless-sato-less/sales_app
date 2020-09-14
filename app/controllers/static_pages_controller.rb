class StaticPagesController < ApplicationController
  def home
    @today_sale = Sale.where(date: Date.today)
  end
end
