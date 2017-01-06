require 'rails_helper'

# As a user
# When I visit "/"

describe 'as a user' do
  context 'I visit root' do
    scenario 'I can search for bestbuy stores near me' do
      visit root_path
      fill_in "search", with: "80202"
      click_on "search"
      expect(current_path).to eq(search_path)

      expect(page).to have_content("16 Total Stores")
    end
  end
end
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "16 Total Stores"
# And I should see exactly 15 results
# And I should see the long name, city, distance, phone number and store type for each of the 15 results
#
# The name will be a link in the next story:
