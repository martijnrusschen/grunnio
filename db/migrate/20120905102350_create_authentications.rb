class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.references :account
      t.string :provider
      t.string :uid

      t.timestamps
    end
    add_index :authentications, :account_id
  end
end
