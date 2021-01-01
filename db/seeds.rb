# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(title: 'Star Wars', description: 'A movie about Han Solo')
Book.create(title: 'ABC',  description: 'Letters book')
Book.create(title: 'psychology', description: 'A book about body language')

Author.create(name: 'Alibaba')
Author.create(name: 'Stephen Hawking')
Author.create(name: 'Jason Wong')