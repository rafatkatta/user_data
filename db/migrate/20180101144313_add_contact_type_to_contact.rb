class AddContactTypeToContact < ActiveRecord::Migration[5.1]
  def change
      add_reference :contacts, :contact_type, foreign_key: true
  end
end
