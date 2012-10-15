namespace :db do
  namespace :sample_data do
    desc "Load sample data"
    task :load => :environment do |t|

      DatabaseCleaner.clean

      create_companies
      create_people
      create_initiatives
    end
  end
end

def create_companies
  100.times do
    c = Company.create!(name: Faker::Company.name,
                   description: Faker::Lorem.paragraph,
                   founded_in: (1990..2012).to_a.sample,
                   kvk_number: rand(99999999).to_s.center(8, rand(9).to_s),
                   number_of_employees: rand(250),
                   blog: Faker::Internet.domain_name,
                   card_attributes: {general_email_address: Faker::Internet.email, phone: 0501234567, twitter_username: "@#{Faker::Internet.user_name}"[0,14], website_url: Faker::Internet.domain_name},
                   location_attributes: {street_address: Faker::Address.street_address, postal_code: Faker::Address.zip, city: Faker::Address.city}
                   )
    c.products.create(name: Faker::Company.bs, description: Faker::Company.catch_phrase, website_url: Faker::Internet.domain_name)
  end
end

def create_people
  100.times do
    Person.create!( name: Faker::Name.name,
                    biography: Faker::Lorem.paragraph,
                    headline: Faker::Company.bs,
                    card_attributes: {general_email_address: Faker::Internet.email, phone: 0501234567, twitter_username: "@#{Faker::Internet.user_name}"[0,14], website_url: Faker::Internet.domain_name})
  end
end

def create_initiatives
  100.times do
    Initiative.create!(name: Faker::Company.name,
                       description: Faker::Lorem.paragraph)
  end
end
