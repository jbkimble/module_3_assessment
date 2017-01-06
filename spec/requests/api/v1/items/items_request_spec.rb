require 'rails_helper'

describe 'api/v1/items' do
  context 'I send a request and it performs the correct action' do
    scenario 'GET to index' do
      item = Item.create(name:"chair", description:"made of wood", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      item2 = Item.create(name:"table", description:"made of steel", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      get "/api/v1/items"

      expect(response).to be_success
      result = JSON.parse(response.body)

      expect(result[0]["name"]).to eq("chair")
      expect(result[1]["name"]).to eq("table")
    end

    scenario 'GET to show' do
      item = Item.create(name:"chair", description:"made of wood", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      item2 = Item.create(name:"table", description:"made of steel", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      get "/api/v1/items/#{item2.id}"

      expect(response).to be_success
      result = JSON.parse(response.body)

      # expect(result).to eq("chair")
    end
  end
end
