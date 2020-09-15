class StaticPagesController < ApplicationController
  include StaticPagesHelper
  def home 
    @data_of_today = data_of_a_day("2020-9-2")
    @sample_day = data_of_a_day(Date.yesterday)
    

    # @today_price = some_per_time(:price)
    # @today_transactions = some_per_time(:transactions, day)
    # @today_price_total = total(@today_price)
    # @today_transactions_total = total(@today_transactions)
    # @day_price = unit(:price)
    # @total_price = total(@day_price)
    # @day_transactions = unit(:transactions)
    # @total_transactions = total(@day_transactions)
    # # binding.irb
    # @day_sale = day_total(@day_price, @day_transactions)
  end
end
