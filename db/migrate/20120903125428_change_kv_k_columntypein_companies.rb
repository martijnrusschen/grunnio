class ChangeKvKColumntypeinCompanies < ActiveRecord::Migration
  def change
    change_column(:companies, :kvk_number, :string)
  end
end
