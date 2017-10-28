require 'rails_helper'

describe Author, type: :model do

	it "should create instance" do
	    firstName = 'Alan'
		lastName = 'Turing'
		homepage = 'http://wikipedia.org/alan_turing'
	
		author = Author.new(
			firstName: firstName, 
			lastName: lastName,
			homepage: homepage)
	end
	
end