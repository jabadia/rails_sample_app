require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
  end

  describe "About Page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end
  end

  describe "Page Titles" do
  	it "Home should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => 'Ruby On Rails Tutorial App | Home')
  	end
  	it "Help should have the right title" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => 'Ruby On Rails Tutorial App | Help')
  	end
  	it "About should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => 'Ruby On Rails Tutorial App | About')
  	end
  end

end
