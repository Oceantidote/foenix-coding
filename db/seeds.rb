# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Job.destroy_all
Country.destroy_all

User.create(email: "test@test.com", password: "password")

country1 = Country.new(name: "Canada")
country1.photo.attach(io: File.open('/Users/ben/code/fanninggg/foenix/app/assets/images/canada.png'), filename: 'canada.png')
country1.save
country2 = Country.new(name: "Sweden")
country2.photo.attach(io: File.open('/Users/ben/code/fanninggg/foenix/app/assets/images/sweden.png'), filename: 'sweden.png')
country2.save
country3 = Country.new(name: "Ireland")
country3.photo.attach(io: File.open('/Users/ben/code/fanninggg/foenix/app/assets/images/ireland.png'), filename: 'ireland.png')
country3.save

countries = [country1, country2, country3]

15.times do
  Job.create( title: Faker::Job.title,
              country: countries.sample,
              location: Faker::Address.city,
              job_type: Faker::Job.field,
              text1: "<div><strong>Lorem ipsum dolor sit amet</strong>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id <em>est laborum</em>.</div>",
              text2: "<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br><br>Ut <strong>enim ad minim</strong> veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <br><br><em>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></div>",
              expectation1: Faker::Job.key_skill,
              expectation2: Faker::Job.key_skill,
              expectation3: Faker::Job.key_skill,
              expectation4: Faker::Job.key_skill,
              expectation5: Faker::Job.key_skill,
              expectation6: Faker::Job.key_skill,
              expectation7: Faker::Job.key_skill,
              expectation8: Faker::Job.key_skill,
              expectation9: Faker::Job.key_skill,
              expectation10: Faker::Job.key_skill,
              responsibility1: Faker::Science.element,
              responsibility2: Faker::Science.element,
              responsibility3: Faker::Science.element,
              responsibility4: Faker::Science.element,
              responsibility5: Faker::Science.element,
              responsibility6: Faker::Science.element,
              responsibility7: Faker::Science.element,
              responsibility8: Faker::Science.element,
              responsibility9: Faker::Science.element,
              responsibility10: Faker::Science.element
            )
end
puts "Finished seeding brah 😎"




