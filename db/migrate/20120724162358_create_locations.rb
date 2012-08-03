class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.string :street_address
      t.string :extended_address
      t.string :postal_code
      t.string :city
      t.string :locality
      t.string :region
      t.string :country
      t.float :latitude
      t.float :longitude

      t.references :locatable, polymorphic: true
      t.timestamps
    end
    add_index :locations, [:locatable_id, :locatable_type]
  end
end
