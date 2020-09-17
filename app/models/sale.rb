class Sale < ApplicationRecord
  validates :time, numericality: { greater_than_or_equal_to: 7,
                                   less_than_or_equal_to: 22 }
end
