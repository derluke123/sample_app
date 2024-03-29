require 'spec_helper'

describe "Static pages" do

	let(:baseTitle) { "Ruby on Rails Tutorial Sample App" }

	describe "Home page" do
		it "should have the content 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Home')
		end
		
		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{baseTitle} | Home")
		end
	end
	
	describe "Help page" do
		
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		
		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{baseTitle} | Help")
		end
	end
	
	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end
		
		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{baseTitle} | About")
		end
	end
	
	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end
		
		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{baseTitle} | Contact")
		end
	end	

end
