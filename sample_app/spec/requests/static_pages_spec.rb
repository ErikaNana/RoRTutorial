require 'spec_helper'

describe "Static pages" do

    describe "Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home' #uses Capybara function visit to simulate vising the URL
                                       #/static_pages/home in a browser
            expect(page).to have_content('Sample App') # uses the page variable provided by Capybara to
                                                       # express the expectation that the resulting page
                                                       # should have the right content
        end
    end

    #test Help page
    describe "Help page" do
        it "should have the contet 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end
    end

    #test About page
    describe "About page" do
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end
    end
end