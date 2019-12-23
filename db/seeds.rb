# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# User.destroy_all
# Job.destroy_all
# Country.destroy_all

# User.create(email: "test@test.com", password: "password")
User.create(email: "admin@test.com", password: "password", admin: true)

# country1 = Country.new(name: "UK")
# country1.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/uk.png'), filename: 'uk.png')
# country1.save
# country2 = Country.new(name: "Peru")
# country2.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/peru.png'), filename: 'peru.png')
# country2.save
# country3 = Country.new(name: "Saudi Arabia")
# country3.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/saudi-arabia.png'), filename: 'saudi-arabia.png')
# country3.save
# country4 = Country.new(name: "Netherlands")
# country4.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/netherlands.png'), filename: 'netherlands.png')
# country4.save
# country5 = Country.new(name: "Brazil")
# country5.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/brazil.png'), filename: 'brazil.png')
# country5.save
# country6 = Country.new(name: "Ivory Coast")
# country6.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/ivory-coast.png'), filename: 'ivory-coast.png')
# country6.save
# country7 = Country.new(name: "UAE")
# country7.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/uae.png'), filename: 'uae.png')
# country7.save
# country8 = Country.new(name: "Argentina")
# country8.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/argentina.png'), filename: 'argentina.png')
# country8.save
# country9 = Country.new(name: "Singapore")
# country9.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/singapore.png'), filename: 'singapore.png')
# country9.save
# country10 = Country.new(name: "Ireland")
# country10.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/ireland.png'), filename: 'ireland.png')
# country10.save
# country11 = Country.new(name: "Indonesia")
# country11.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/indonesia.png'), filename: 'indonesia.png')
# country11.save
# country12 = Country.new(name: "Turkey")
# country12.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/turkey.png'), filename: 'turkey.png')
# country12.save
# country13 = Country.new(name: "Egypt")
# country13.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/egypt.png'), filename: 'egypt.png')
# country13.save
# country14 = Country.new(name: "Sri Lanka")
# country14.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/sri-lanka.png'), filename: 'sri-lanka.png')
# country14.save
# country15 = Country.new(name: "Hungary")
# country15.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/hungary.png'), filename: 'hungary.png')
# country15.save
# country16 = Country.new(name: "Poland")
# country16.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/poland.png'), filename: 'poland.png')
# country16.save
# country17 = Country.new(name: "Chile")
# country17.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/chile.png'), filename: 'chile.png')
# country17.save
# country18 = Country.new(name: "India")
# country18.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/india.png'), filename: 'india.png')
# country18.save
# country19 = Country.new(name: "Germany")
# country19.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/germany.png'), filename: 'germany.png')
# country19.save
# country20 = Country.new(name: "Morocco")
# country20.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/morocco.png'), filename: 'morocco.png')
# country20.save
# country21 = Country.new(name: "South Africa")
# country21.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/south-africa.png'), filename: 'south-africa.png')
# country21.save
# country22 = Country.new(name: "Venezuela")
# country22.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/venezuela.png'), filename: 'venezuela.png')
# country22.save
# country23 = Country.new(name: "Greece")
# country23.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/greece.png'), filename: 'greece.png')
# country23.save
# country24 = Country.new(name: "Italy")
# country24.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/italy.png'), filename: 'italy.png')
# country24.save
# country25 = Country.new(name: "Portugal")
# country25.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/portugal.png'), filename: 'portugal.png')
# country25.save
# country26 = Country.new(name: "Malta")
# country26.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/malta.png'), filename: 'malta.png')
# country26.save
# country27 = Country.new(name: "Australia")
# country27.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/australia.png'), filename: 'australia.png')
# country27.save
# country28 = Country.new(name: "Bulgaria")
# country28.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/bulgaria.png'), filename: 'bulgaria.png')
# country28.save
# country29 = Country.new(name: "Guatemala")
# country29.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/guatemala.png'), filename: 'guatemala.png')
# country29.save
# country30 = Country.new(name: "Nigeria")
# country30.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/nigeria.png'), filename: 'nigeria.png')
# country30.save
# country31 = Country.new(name: "France")
# country31.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/france.png'), filename: 'france.png')
# country31.save
# country32 = Country.new(name: "Malaysia")
# country32.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/malaysia.png'), filename: 'malaysia.png')
# country32.save
# country33 = Country.new(name: "Spain")
# country33.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/spain.png'), filename: 'spain.png')
# country33.save
# country34 = Country.new(name: "Croatia")
# country34.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/croatia.png'), filename: 'croatia.png')
# country34.save
# country35 = Country.new(name: "Lithuania")
# country35.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/lithuania.png'), filename: 'lithuania.png')
# country35.save
# country36 = Country.new(name: "Philippines")
# country36.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/philippines.png'), filename: 'philippines.png')
# country36.save
# country37 = Country.new(name: "USA")
# country37.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/usa.png'), filename: 'usa.png')
# country37.save
# country38 = Country.new(name: "Israel")
# country38.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/israel.png'), filename: 'israel.png')
# country38.save
# country39 = Country.new(name: "China")
# country39.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/china.png'), filename: 'china.png')
# country39.save
# country40 = Country.new(name: "Sweden")
# country40.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/sweden.png'), filename: 'sweden.png')
# country40.save
# country41 = Country.new(name: "Austria")
# country41.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/austria.png'), filename: 'austria.png')
# country41.save
# country = Country.new(name: "Vietnam")
# country.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/vietnam.png'), filename: 'vietnam.png')
# country.save
# country = Country.new(name: "Latvia")
# country.photo.attach(io: File.open('/Users/gonzalodiaz/code/godiaz/foenix-coding/app/assets/images/latvia.png'), filename: 'latvia.png')
# country.save

# countries = [country1, country2, country3]

# 15.times do
#   Job.create( title: Faker::Job.title,
#               country: countries.sample,
#               location: Faker::Address.city,
#               job_type: Faker::Job.field,
#               text1: "<div><strong>Lorem ipsum dolor sit amet</strong>, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <br><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id <em>est laborum</em>.</div>",
#               text2: "<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br><br>Ut <strong>enim ad minim</strong> veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <br><br><em>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></div>",
#               expectation1: Faker::Job.key_skill,
#               expectation2: Faker::Job.key_skill,
#               expectation3: Faker::Job.key_skill,
#               expectation4: Faker::Job.key_skill,
#               expectation5: Faker::Job.key_skill,
#               expectation6: Faker::Job.key_skill,
#               expectation7: Faker::Job.key_skill,
#               expectation8: Faker::Job.key_skill,
#               expectation9: Faker::Job.key_skill,
#               expectation10: Faker::Job.key_skill,
#               responsibility1: Faker::Science.element,
#               responsibility2: Faker::Science.element,
#               responsibility3: Faker::Science.element,
#               responsibility4: Faker::Science.element,
#               responsibility5: Faker::Science.element,
#               responsibility6: Faker::Science.element,
#               responsibility7: Faker::Science.element,
#               responsibility8: Faker::Science.element,
#               responsibility9: Faker::Science.element,
#               responsibility10: Faker::Science.element
#             )
# end

# 20.times do
#   Post.create(
#     title: Faker::Book.title,
#     text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
#     # image: Faker::LoremPixel.image,
#     time: Faker::Date.between(from: 2000.days.ago, to: Date.today)
#     )
# end



puts "Finished seeding brah 😎"




