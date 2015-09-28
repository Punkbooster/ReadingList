class Book < ActiveRecord::Base

	scope :finished, ->{ where.not(finished_on: nil) } #checks if book is not finished
	scope :recent, ->{ where('finished_on > ?', 2.days.ago) } #recent scope

	def finished?
		finished_on.present?
	end

end
