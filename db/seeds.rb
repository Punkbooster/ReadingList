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
biography = Genre.create!(name: 'Biographies')

Book.create!([{ title: "Hyperion",  author: "Leander Kahney", description: "On the world called Hyperion, beyond the law of the Hegemony of Man, there waits the creature called the Shrike.  There are those who worship it.  There are those who fear it.  And there are those who have vowed to destroy it. ", amazon_id: "0553283685",
				 rating: 3, finished_on: 2.days.ago, genres: [non_fiction]  }, 

				{ title: "A Heartbreaking Work of Staggering Genius",  author: "Dave Eggers", description: "Literary self-consciousness and technical invention mix unexpectedly in this engaging memoir by Eggers, editor of the literary magazine McSweeney's and the creator of a satiric 'zine called Might, who subverts the conventions of the memoir by questioning his memory, motivations and interpretations so thoroughly that the form itself becomes comic. Despite the layers of ironic hesitation, the reader soon discerns that the emotions informing the book are raw and, more importantly, authentic. After presenting a self-effacing set of Rules and Suggestions for the Enjoyment of this Book. ", amazon_id: "0375725784",
				 rating: 4, finished_on: 15.days.ago, genres: [biography]  },

				 { title: "Demons",  author: " Fyodor Dostoevsky", description: "Inspired by the true story of a political murder that horried Russians in 1869, Fyodor Dostoevsky conceived of Demons as in which he would say everything about the plague of materialist ideology that he saw infecting his native land. What emerged was a prophetic and ferociously funny masterpiece of ideology and murder in pre-revolutionary Russia. ", amazon_id: "0679734511",
				 rating: 5, finished_on: 10.days.ago, genres: [fiction]  },

				 { title: "The Idiot",  author: " Fyodor Dostoevsky", description: "After his great portrayal of a guilty man in Crime and Punishment, Dostoevsky set out in The Idiot to portray a man of pure innocence. The twenty-six-year-old Prince Myshkin, following a stay of several years in a Swiss sanatorium, returns to Russia to collect an inheritance and “be among people.” Even before he reaches home he meets the dark Rogozhin, a rich merchant’s son whose obsession with the beautiful Nastasya Filippovna eventually draws all three of them into a tragic denouement. ", amazon_id: "0375702245",
				 rating: 4, finished_on: 100.days.ago, genres: [fiction]  } ])

p "Created #{Book.count} books"