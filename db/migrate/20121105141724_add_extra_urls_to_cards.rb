class AddExtraUrlsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :blog_url, :string
    add_column :cards, :personal_url, :string
  end
end
