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
		
		expect(author.firstName).to eq(firstName)
		expect(author.lastName).to eq(lastName)
		expect(author.homepage).to eq(homepage)
			
	end
	
end