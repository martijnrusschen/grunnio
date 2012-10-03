class AddCategoryIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :category_id, :integer
    add_foreign_key "companies", "categories"
  end
end
