require 'spec_helper'

describe "Static" do

  describe "Home page" do

	it "should have the content 'My attempt'" do
      visit '/static/home'
      expect(page).to have_content('My attempt')
    	end
	it "should have the right title" do
      visit '/static/home'
      expect(page).to have_title('Home')
    	end
	end
end

  