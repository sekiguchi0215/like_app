# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE posts RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

Post.create!(content: "おはよう", user_id: user2.id)
Post.create!(content: "こんにちは", user_id: user3.id)
Post.create!(content: 'こんばんは', user_id: user3.id)

puts "初期データの投入に成功しました！"