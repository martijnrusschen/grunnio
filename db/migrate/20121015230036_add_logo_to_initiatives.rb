class AddLogoToInitiatives < ActiveRecord::Migration
  def change
    add_column :initiatives, :logo, :string
  end
end
