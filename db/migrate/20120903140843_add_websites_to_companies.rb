class AddWebsitesToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :websites, :hstore
  end
end
