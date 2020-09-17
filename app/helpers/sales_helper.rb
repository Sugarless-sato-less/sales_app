module SalesHelper
  def data_of_a_day(day = Date.yesterday)
    return Sale.where(date: day)
  end

  def data_of_target(day = Date.today)
    return Target.where(date: day)
  end
end
