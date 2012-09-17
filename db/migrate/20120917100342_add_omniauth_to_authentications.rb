class AddOmniauthToAuthentications < ActiveRecord::Migration
  def change
    add_column :authentications, :omniauth, :text
  end
end
