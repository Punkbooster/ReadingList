# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-fiction')
apple = Genre.create!(name: 'Apple')

Book.create!([{ title: "Hyperion",  author: "Leander Kahney", description: "Dummy text Bugag. Some description, cool!", amazon_id: "159184617X",
				 rating: 3, finished_on: 2.days.ago, genres: [apple]  }, 

				{ title: "Jony Ive: The Genius behinf apple products",  author: "Copenhagen", description: "Some description, cool!", amazon_id: "0553283685",
				 rating: 5, finished_on: 5.days.ago, genres: [fiction, apple]  } ])

p "Created #{Book.count} books"