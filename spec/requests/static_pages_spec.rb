require 'spec_helper'

describe "Static Pages" do
  
  describe "Home Page" do
    
    it "should have the h1 'Gossip Fish'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Gossip Fish')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Gossip Fish | Home")
    end
  end
  
  
  describe "Help page" do
    
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Gossip Fish | Help")
    end
  end

  describe "About page" do
    
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Gossip Fish | About Us")
    end
  end
end
