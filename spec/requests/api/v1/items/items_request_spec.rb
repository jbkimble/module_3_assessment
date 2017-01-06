require 'rails_helper'

describe 'api/v1/items' do
  context 'I send a request and it performs the correct action' do
    scenario 'GET to index' do
      item = Item.create(name:"chair", description:"made of wood", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      item2 = Item.create(name:"table", description:"made of steel", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      get "/api/v1/items"

      expect(response).to be_success
      result = JSON.parse(response.body)

      expect(response.code).to eq("200")
      expect(result[0]["name"]).to eq("chair")
      expect(result[1]["name"]).to eq("table")
    end

    scenario 'GET to show' do
      item = Item.create(name:"chair", description:"made of wood", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      item2 = Item.create(name:"table", description:"made of steel", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      get "/api/v1/items/#{item2.id}"

      expect(response).to be_success
      result = JSON.parse(response.body)

      expect(response.code).to eq("200")
      expect(result["name"]).to eq("table")
      expect(result["description"]).to eq("made of steel")
      expect(result["image_url"]).to eq("https://i.vimeocdn.com/portrait/58832_300x300")
      # expect(result). TO NOT HAVE KEY CREATED_AT OR UPDATED_AT
    end

    scenario 'DELETE an item' do
      item = Item.create(name:"chair", description:"made of wood", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      item2 = Item.create(name:"table", description:"made of steel", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")

      expect(Item.count).to eq(2)
      delete "/api/v1/items/#{item2.id}"

      expect(response.code).to eq("204")
      expect(Item.count).to eq(1)
      expect(Item.last.name).to eq("chair")
    end

    scenario 'CREATE an item' do

      expect(Item.count).to eq(0)
      post "/api/v1/items/", item: {name:"bacon", description:"yum", image_url:"https://i.vimeocdn.com/portrait/58832_300x300"}
      result = JSON.parse(response.body)

      expect(Item.count).to eq(1)
      expect(Item.last.name).to eq("bacon")
      expect(result["name"]).to eq("bacon")
      expect(result["description"]).to eq("yum")
    end


  end
end
