class Author < ActiveRecord::Base
	
	has_many :papers
	
	def name
		first_name + ' ' + last_name
	end

	validates :last_name, presence: true
end
