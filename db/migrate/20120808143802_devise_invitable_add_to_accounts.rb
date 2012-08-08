class DeviseInvitableAddToAccounts < ActiveRecord::Migration
  change_table :accounts do |t|
      t.string   :invitation_token, :limit => 60
      t.datetime :invitation_sent_at
      t.datetime :invitation_accepted_at
      t.integer  :invitation_limit
      t.integer  :invited_by_id
      t.string   :invited_by_type
  end

  # Allow null encrypted_password
  change_column :accounts, :encrypted_password, :string, :null => true
  # Allow null password_salt (add it if you are using Devise's encryptable module)
  # change_column :accounts, :password_salt, :string, :null => true
end
