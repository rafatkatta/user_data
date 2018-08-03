class Contact < ApplicationRecord
  belongs_to :data_type
  belongs_to :contact_type
  belongs_to :user
  
  validates :data, presence: true
  validate :validation_regxp
  
private

  def validation_regxp
    if self.contact_type.is_active
      if self.contact_type.validation     
        if !validation_regxp.nil
   	  return self.contact_type.validation_regxp.to_regexp.match? self.data
        end
      end
    end
    true
  end

end

