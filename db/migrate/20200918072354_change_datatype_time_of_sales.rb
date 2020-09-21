class ChangeDatatypeTimeOfSales < ActiveRecord::Migration[6.0]
  def change
    change_column :sales, :time, :integer
  end
end
