class AddCachedSlugToInitiatives < ActiveRecord::Migration
  
  def self.up
    add_column :initiatives, :cached_slug, :string
    add_index  :initiatives, :cached_slug
  end

  def self.down
    remove_column :initiatives, :cached_slug
  end
  
end
