class AddTimestampsToCompaniesPeople < ActiveRecord::Migration
  def change
    remove_columns :companies_people, :created_at, :updated_at
    change_table :companies_people do |t|
      t.timestamps
    end
  end
end
