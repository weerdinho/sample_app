require 'spec_helper'

describe "User pages" do
let(:base_title) {"Ruby on Rails Tutorial Sample App |"}
  describe "Signup page" do
    it "should have the content h1 Sign up" do
      visit signup_path
      page.should have_selector("h1", :text => "Sign up")
    end
    
    it "should have the title 'sign up'" do
      visit signup_path
      page.should have_selector("title", :text => "#{base_title} Sign up")
    end
  end
end
