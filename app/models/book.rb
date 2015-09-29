class Book < ActiveRecord::Base

	has_many :book_genres
	has_many :genres, through: :book_genres

	scope :finished, ->{ where.not(finished_on: nil) } #checks if book is not finished
	scope :recent, ->{ where('finished_on > ?', 2.days.ago) } #recent scope

	before_save :set_keywords

	def self.search(keyword)
		if keyword.present?
			where('keywords LIKE ?', "%#{keyword.downcase}%")
		else
			all
		end
	end

	def finished?
		finished_on.present?
	end

	protected

	def set_keywords
		self.keywords = [title, author, description].map { |p| p.downcase }.join(' ') #join our array with spaces
	end

end
