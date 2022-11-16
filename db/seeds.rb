# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

News.delete_all
User.delete_all
Role.delete_all

PASSWD = '111111'

AdminUser.create!(email: 'admin@example.com', 
                  password: PASSWD, 
                  password_confirmation: PASSWD) if Rails.env.development?

Role.create!(name: 'Administrator', code: 1)
Role.create!(name: 'User', code: 2)

(1..10).each do |n|
  User.create!(email: "user#{n}@example.com", 
               password: PASSWD, 
               password_confirmation: PASSWD, 
               role_id: Role.where(code: 2).ids.first)
end

(1..100).each do |n|
  News.create!(header: FFaker::Lorem.sentence, 
               content: FFaker::Lorem.paragraph,
               user_id: User.all.sample.id)
end
