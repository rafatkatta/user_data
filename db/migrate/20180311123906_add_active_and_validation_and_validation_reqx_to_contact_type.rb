class AddActiveAndValidationAndValidationReqxToContactType < ActiveRecord::Migration[5.1]
  def change
    	add_column :contact_types, :active, :boolean, default: true
     	add_column :contact_types, :validation, :boolean, default: false
    	add_column :contact_types, :validation_regxp, :string
  end
end
