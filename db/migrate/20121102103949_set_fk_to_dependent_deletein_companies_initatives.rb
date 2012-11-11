class SetFkToDependentDeleteinCompaniesInitatives < ActiveRecord::Migration
  def change
     change_table :initiatives_people do |t|
       t.remove_foreign_key :initiatives
       t.foreign_key :initiatives, dependent: :delete
     end
  end
end
