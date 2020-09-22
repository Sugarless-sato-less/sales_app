class AddDefaultToUser < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :admin, dafault: false
  end
end
