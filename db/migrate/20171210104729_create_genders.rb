class CreateGenders < ActiveRecord::Migration[5.1]
  def change
    create_table :genders do |t|
      t.string :designation

      t.timestamps
    end
  end
end
