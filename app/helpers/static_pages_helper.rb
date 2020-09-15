module StaticPagesHelper
  # def unit(num)
  #   today_sale = Sale.where(date: Date.today)
  #   # @today_target = Sale.where(date: )
  #   any_sale = Sale.where(date: Date.yesterday)
  #   hash = {}
  #   (7..22).each do |time| 
  #     result = today_sale.find_by(time: time)[num] - any_sale.find_by(time: time)[num]
  #     hash.store(time, result)
  #   end
  #   return hash
  # end

  # def total(hash)
  #   total = []
  #   (7..22).each do |num|
  #     total << hash[num]
  #   end
  #   return total.sum
  # end

  # def day_total(hash1, hash2)
  #   total = []
  #   (7..22).each do |num|
  #     total << hash1[num] * hash2[num]
  #   end
  #   return total.sum
  # end

  def data_of_a_day(day = Date.today)
    return Sale.where(date: day)
  end
    
end

#これが今日の8時の単価出す書き方 
#Sale.where(date: Date.today).find_by(time: 8)[:price]
