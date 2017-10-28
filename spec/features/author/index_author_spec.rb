require 'rails_helper'

describe "Index author page", type: :feature do
  
	it "should render" do
		visit index_author_path
	end
	
end