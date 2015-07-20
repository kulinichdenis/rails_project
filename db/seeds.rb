# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:'Denis', email:'ddd@email.com', password:'123456789')
User.create(name:'Danil', email:'dd@email.com', password:'123456789')
User.create(name:'Vasya', email:'vv@email.com', password:'123456789')


Category.create(name: 'Category1')
Category.create(name: 'Category2')
Category.create(name: 'Category3')

Article.create(title: 'qwwwwww', content: 'qqqqqqqqqqqqqq')
