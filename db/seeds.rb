30.times do |n|
  date = Date.new(2020,9,1) + n
  15.times do |t|
    time = 7 + t
    price = (650..1200).to_a.sample
    transactions = (30..100).to_a.sample
    total = price * transactions
    Sale.create!(
      date: date,
      time: time,
      price: price,
      transactions: transactions,
      total: total
    )
  end
end

30.times do |n|
  date = Date.new(2020,9,1) + n
  15.times do |t|
    time = 7 + t
    price = (650..1200).to_a.sample
    transactions = (30..100).to_a.sample
    total = price * transactions
    Sale.create!(
      date: date,
      time: time,
      price: price,
      transactions: transactions,
      total: total
    )
  end
end


User.create!(name: "tencho",
             password: "password",
             admin: true)

    
User.create!(name: "juugyouin",
             password: "password")