ActiveAdmin.register Address do

  controller do
    def scoped_collection
      if current_account.is_admin?
        super.all
      else
        super.where(id: current_account.id)
      end
    end
  end

end
