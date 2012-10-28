class SetFkToDependentDeleteInAccounts < ActiveRecord::Migration
  def change
    change_table :authentications do |t|
      t.foreign_key :accounts, dependent: :delete
    end
    change_table :people do |t|
      t.remove_foreign_key :accounts
      t.foreign_key :accounts, dependent: :delete
    end
  end
end
