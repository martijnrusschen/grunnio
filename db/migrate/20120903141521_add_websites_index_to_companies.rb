class AddWebsitesIndexToCompanies < ActiveRecord::Migration
  def up
    execute "CREATE INDEX companies_gin_websites ON companies USING GIN(websites)"
  end

  def down
    execute "DROP INDEX companies_gin_websites"
  end


end
