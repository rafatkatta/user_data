class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.date   :birthday
      t.string :birthplace
      t.string :birth_country
      t.string :identity_card_id
      t.string :tax_id
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
