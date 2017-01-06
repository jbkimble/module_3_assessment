require 'rails_helper'

describe 'as a user' do
  context 'I visit root' do
    scenario 'I can search for bestbuy stores near me' do
      visit root_path
      fill_in "search", with: "80202"
      click_on "search"
      expect(current_path).to eq(search_index_path)

      expect(page).to have_content("16 Total Stores")
      expect(page).to have_content("Denver")
      expect(page).to have_content("3.25")
      expect(page).to have_content("303-270-9189")
      expect(page).to have_content("Mobile")
      expect(page).to have_content("Best Buy Mobile - Cherry Creek Shopping Center")

      expect(page).to have_content("Boulder")
      expect(page).to have_content("22.79")
      expect(page).to have_content("303-938-2889")
      expect(page).to have_content("BigBox")
      expect(page).to have_content("Best Buy - Boulder")
    end
  end
end
