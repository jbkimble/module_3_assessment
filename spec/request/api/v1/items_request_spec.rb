require 'rails_helper'

descrbe 'api/v1/items' do
  context 'I send a request and it performs the correct action' do
    scenario 'GET to index' do
      item = Item.create(name:"chair", description:"made of wood", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
      item2 = Item.create(name:"table", description:"made of steel", image_url:"https://i.vimeocdn.com/portrait/58832_300x300")
    end
  end
end
