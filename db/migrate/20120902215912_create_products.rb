class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :website_url
      t.date :market_date

      t.timestamps
    end
  end
end
