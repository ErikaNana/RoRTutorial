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

        #test title
        it "should have the title 'Home'" do
            visit '/static_pages/home'
            # use Capybara's have_title method to check for an HTML title with the given content
            # this also means that substring "Home" will match the full title
            expect(page).to have_title("Home")
        end
    end

    #test Help page
    describe "Help page" do
        it "should have the contet 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end

        it "should have the title 'Help" do
            visit '/static_pages/help'
            expect(page).to have_title("Help")
        end
    end

    #test About page
    describe "About page" do
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end

        it "should have the title 'About Us" do
            visit '/static_pages/about'
            expect(page).to have_title("About Us")
        end
    end

end