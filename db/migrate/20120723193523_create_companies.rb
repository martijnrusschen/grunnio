class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_type
      t.text :description
      t.string :category
      t.integer :founded_in
      t.integer :number_of_employees
      t.integer :kvk_number

      t.timestamps
    end
  end
end
