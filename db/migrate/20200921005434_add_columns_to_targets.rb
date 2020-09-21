class AddColumnsToTargets < ActiveRecord::Migration[6.0]
  def change
    add_column :targets, :total, :integer
  end
end
