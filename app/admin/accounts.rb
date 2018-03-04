ActiveAdmin.register Account do
  permit_params :email, :is_admin, :password, :password_confirmation
  scope_to :current_user, unless: proc{ current_account.is_admin? }

  index do
    selectable_column
    id_column
    column :email
    column :is_admin
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      if current_account.is_admin?
        f.input :is_admin
      end
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
