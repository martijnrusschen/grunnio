class AddMissingForeignKeys < ActiveRecord::Migration
  def change

    create_table(:companies_people, id: false) do |t|
      t.integer :company_id
      t.integer :person_id
      t.timestamps
    end

    create_table(:initiatives_people, id: false) do |t|
      t.integer :initiative_id
      t.integer :person_id
      t.timestamps
    end

    change_table :jobs do |t|
      t.integer :company_id
    end

    add_foreign_key "companies_people", "companies", name: "companies_people_company_id_fk"
    add_foreign_key "companies_people", "people", name: "companies_people_person_id_fk"
    add_foreign_key "initiatives_people", "initiatives", name: "initiatives_people_initiative_id_fk"
    add_foreign_key "initiatives_people", "people", name: "initiatives_people_person_id_fk"
    add_foreign_key "jobs", "companies", name: "jobs_company_id_fk"
  end
end
