class AddImageableToImages < ActiveRecord::Migration
  def change
    add_column :images, :description, :text
    add_column :images, :imageable_id, :integer
    add_column :images, :imageable_type, :string

    add_index(:images, :description)
    add_index(:images, [ :imageable_type, :imageable_id  ])
  end
end
