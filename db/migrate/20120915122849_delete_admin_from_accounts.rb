class DeleteAdminFromAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :admin
  end
end
