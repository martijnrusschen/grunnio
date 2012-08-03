class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :phone
      t.string :general_email_address
      t.string :website_url
      t.string :twitter_username
      t.timestamps

      t.references :cardable, polymorphic: true
    end
    add_index :cards, [:cardable_id, :cardable_type]
  end
end
