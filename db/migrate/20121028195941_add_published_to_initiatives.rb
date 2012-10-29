class AddPublishedToInitiatives < ActiveRecord::Migration
  def change
    add_column :initiatives, :published, :boolean
  end
end
