class ChangeDataTimeToSales < ActiveRecord::Migration[6.0]
  def change
    change_column :Sales, :time, :integer
  end
end
