class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country_code
      t.string :zip_code
      t.string :state
      t.string :city
      t.string :street
      t.string :house
      t.references :data_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
