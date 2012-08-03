class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :headline
      t.string :specialities
      t.date :birthdate
      t.text :biography

      t.timestamps
    end
  end
end
