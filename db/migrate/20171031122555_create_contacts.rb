class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :data
      t.string :type
      t.references :data_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
