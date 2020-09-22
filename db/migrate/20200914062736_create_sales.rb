class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.date :date
      t.integer :time
      t.integer :price
      t.integer :transactions

      t.timestamps
    end
  end
end
