class AddProductRelations < ActiveRecord::Migration
  def change

    change_table :products do |t|
      t.references :productable, polymorphic: true
    end

    add_index :products, [:productable_id, :productable_type]
  end
end
