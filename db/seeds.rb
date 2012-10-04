# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# RocketTag::Tag.create(name: "design")
# RocketTag::Tag.create(name: "development")
# RocketTag::Tag.create(name: "services")
# RocketTag::Tag.create(name: "products")
# RocketTag::Tag.create(name: "consultancy")

DatabaseCleaner.clean unless Rails.env == 'production'

admin = Account.create!(email: 'admin@admin.nl', password: 'silgrongrunnio')
admin.add_role :admin
admin.confirm!

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
