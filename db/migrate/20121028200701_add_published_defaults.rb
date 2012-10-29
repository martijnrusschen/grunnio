class AddPublishedDefaults < ActiveRecord::Migration
  def change
      change_column :people, :published, :boolean, :default => false
      change_column :companies, :published, :boolean, :default => true
      change_column :initiatives, :published, :boolean, :default => true
  end
end
