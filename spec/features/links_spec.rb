# CAPYBARA AWESOMENESS
require 'rails_helper'

describe "test home page" do 

	it "can visit home page" do
		visit root_path
		 expect(current_path).to eq(root_path)
	end
	
end