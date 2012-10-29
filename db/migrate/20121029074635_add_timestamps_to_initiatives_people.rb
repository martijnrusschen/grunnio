class AddTimestampsToInitiativesPeople < ActiveRecord::Migration
  def change
    remove_columns :initiatives_people, :created_at, :updated_at
    change_table :initiatives_people do |t|
      t.timestamps
    end
  end
end
