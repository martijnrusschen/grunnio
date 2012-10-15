class AddDescriptionToInitiatives < ActiveRecord::Migration
  def change
    add_column :initiatives, :description, :text
  end
end
