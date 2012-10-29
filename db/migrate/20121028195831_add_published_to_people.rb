class AddPublishedToPeople < ActiveRecord::Migration
  def change
    add_column :people, :published, :boolean
  end
end
