require 'rails_helper'

describe 'As a user' do
  context 'I visit a stores page' do
    scenario 'I can see the stores hours' do
      visit root_path
      fill_in "search", with: "80202"
      click_on "search"
      click_on("Best Buy Mobile - Cherry Creek Shopping Center")

      # expect(current_path).to eq(stores_path())
      expect(page).to have_content("Best Buy Mobile - Cherry Creek Shopping Center")
      expect(page).to have_content("Mobile")
      # expect(page).to have_content( STORE ADDRESS )
      # expect(page).to have_content( STORE HOURS )

    end
  end
end
# As a user
# After I have searched a zip code for stores
# When I click the name of a store
# Then my current path should be "/stores/:store_id"
# I should see the store name, store type and address with city, state and zip
# I should see an unordered list of the store hours in the following format:
#   * Mon: 10am-9pm
#   * Tue: 10am-9pm
#   * Wed: 10am-9pm
#   * Thurs: 10am-9pm
#   * Fri: 10am-9pm
#   * Sat: 10am-9pm
#   * Sun: 11am-7pm
