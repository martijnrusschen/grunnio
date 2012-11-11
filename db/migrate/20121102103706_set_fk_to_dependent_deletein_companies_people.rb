class SetFkToDependentDeleteinCompaniesPeople < ActiveRecord::Migration
  def change
    change_table :companies_people do |t|
      t.remove_foreign_key :companies
      t.foreign_key :companies, dependent: :delete
    end
  end
end
