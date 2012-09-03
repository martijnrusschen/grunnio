class ChangeKvKColumntypeinCompanies < ActiveRecord::Migration
  def up
    change_column(:companies, :kvk_number, :string)
  end

  def down
    change_column(:companies, :kvk_number, :integer)
  end
end
