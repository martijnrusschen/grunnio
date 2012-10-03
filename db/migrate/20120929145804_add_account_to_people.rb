class AddAccountToPeople < ActiveRecord::Migration
  change_table :people do |t|
    t.column :account_id, :integer
    t.foreign_key :accounts
  end
end
