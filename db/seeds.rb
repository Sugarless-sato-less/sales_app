require 'Date'
100.times do |n|
  date = Date.new(2020,7,1) + n
  16.times do |t|
    time = 7 + t
    price = (650..1200).to_a.sample
    transactions = (30..100).to_a.sample
    Sale.create!(
      date: date,
      time: time,
      price: price,
      transactions: transactions
    )
  end
end

100.times do |n|
  date = Date.new(2020,9,1) + n
  16.times do |t|
    time = 7 + t
    price = (650..1100).to_a.sample
    transactions = (25..80).to_a.sample
    Target.create!(
      date: date,
      time: time,
      price: price,
      transactions: transactions
    )
  end
end
    