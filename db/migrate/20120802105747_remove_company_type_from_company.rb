class RemoveCompanyTypeFromCompany < ActiveRecord::Migration
  def change
    remove_column(:companies, :company_type)
  end
end
