require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }    
  let(:static_pages_url) { "/static_pages/" }   
  
  describe "Home page" do  
  
    let(:home_url) { "#{static_pages_url}home" }
    
    it "should have the h1 'Sample App'" do
      visit "#{home_url}"
      page.should have_selector('h1', text: 'Sample App')
    end
    
    it "should have the correct title" do
      visit "#{home_url}"
      page.should have_selector('title', text: "#{base_title}")
    end
    
    it "should not have a custom page title" do
      visit "#{home_url}"
      page.should_not have_selector('title', text: '| ') 
     
    end
  end
  
  describe "Help page" do
  
    let(:help_url) { "#{static_pages_url}help" }
    
    it "should have the h1 'Help'" do
      visit "#{help_url}"
      page.should have_selector('h1', text: 'Help')
    end
    
    it "should have the correct title" do
      visit "#{help_url}"
      page.should have_selector('title', text: "#{base_title} | Help")
    end
  end
  
  describe "About page" do
  
    let(:about_url) { "#{static_pages_url}about" } 
    
    it "should have the h1 'About'" do
      visit "#{about_url}"
      page.should have_selector('h1', text: 'About')
    end
    
    it "should have the correct title" do
      visit "#{about_url}"
      page.should have_selector('title', text: "#{base_title} | About")
    end
  end
  
  describe "Contact page" do
  
    let(:contact_url) { "#{static_pages_url}contact" } 
    
    it "should have the h1 'Contact'" do
      visit "#{contact_url}"
      page.should have_selector('h1', text: 'Contact')
    end
    
    it "should have the correct title" do
      visit "#{contact_url}"
      page.should have_selector('title', text: "#{base_title} | Contact")
    end
  end
end
