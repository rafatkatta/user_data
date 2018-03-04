ActiveAdmin.register Address do
  scope_to :current_user, unless: proc{ current_account.is_admin? }

end
