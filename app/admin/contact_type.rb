ActiveAdmin.register ContactType do
  menu if: proc{ current_account.is_admin? }

end
