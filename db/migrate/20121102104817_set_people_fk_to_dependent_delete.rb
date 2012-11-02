class SetPeopleFkToDependentDelete < ActiveRecord::Migration
  def change
    change_table :initiatives_people do |t|
      t.remove_foreign_key :people
      t.foreign_key :people, dependent: :delete
    end
    change_table :companies_people do |t|
      t.remove_foreign_key :people
      t.foreign_key :people, dependent: :delete
    end
  end
end
