class RemoveTimeFromSales < ActiveRecord::Migration[6.0]
  def change
    remove_column :sales, :time, :integer
    remove_column :sales, :time, :time
  end
end
