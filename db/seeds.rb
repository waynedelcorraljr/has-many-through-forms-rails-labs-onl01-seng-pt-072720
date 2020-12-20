# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'Another User')
User.create(username: 'Leo')
User.create(username: 'Lucca')
Comment.create(content: "Leo's words", user: User.find(4), post: Post.find(4))
Comment.create(content: "Some stuff about the thing", user: User.find(3), post: Post.find(5))
