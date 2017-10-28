require 'rails_helper'

RSpec.describe Author, type: :model do

	it "should create instance" do
	    first_name = 'Alan'
		last_name = 'Turing'
		homepage = 'http://wikipedia.org/alan_turing'
	
		author = Author.new(
			first_name: first_name, 
			last_name: last_name,
			homepage: homepage)
		
		expect(author.first_name).to eq(first_name)
		expect(author.last_name).to eq(last_name)
		expect(author.homepage).to eq(homepage)
			
	end
	
	it "should concat the 'first name' and 'last name' to 'name'" do
	
		first_name = 'Alan'
		last_name = 'Turing'
		homepage = 'http://wikipedia.org/alan_turing'
	
		author = Author.new(
			first_name: first_name, 
			last_name: last_name,
			homepage: homepage)
		
		expect(author.name).to eq(first_name + ' ' + last_name)
		
	end

end
