require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
    before(:each) do
      visit '/static_pages/home'
    end

    it "should have the content 'Sample App'" do
    	# visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
    	# visit '/static_pages/home'
    	page.should have_selector('title',
    									 :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom title" do
      # visit '/static_pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end
  end

  describe "Help Page" do
    before(:each) do
      visit '/static_pages/help'
    end
  	
    it "should have the content 'Help'" do
  		# visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

    it "should have the right title" do
      # visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    before(:each) do
      visit '/static_pages/about'
    end

  	it "should have the content 'About Us'" do
  		# visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end

    it "should have the right title" do
      # visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end

  describe "Contact Page" do
    before(:each) do
      visit '/static_pages/contact'
    end

    it "should have the content 'Contact Us'" do
      # visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact Us")
    end

    it "should have the right title" do
      # visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contact Us")
    end
  end
end