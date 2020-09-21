class AddColumnsToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :total, :integer
  end
end
