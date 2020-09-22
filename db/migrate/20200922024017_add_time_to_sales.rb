class AddTimeToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :time, :string
  end
end
