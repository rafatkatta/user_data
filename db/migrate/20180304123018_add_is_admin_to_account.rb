class AddIsAdminToAccount < ActiveRecord::Migration[5.1]
  def change
  	add_column :accounts, :is_admin, :boolean, default: false
  end
end
