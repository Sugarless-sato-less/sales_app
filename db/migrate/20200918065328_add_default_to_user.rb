class AddDefaultToUser < ActiveRecord::Migration[6.0]
  def change
    change_column_default :Users, :admin, dafault: false
  end
end
