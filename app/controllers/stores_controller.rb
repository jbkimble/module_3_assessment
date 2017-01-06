class StoresController < ApplicationController
  def show
    uri = URI("https://api.bestbuy.com/v1/stores(storeId=1118)?format=json&show=storeType,longName,hoursAmPm&apiKey=7a3heu7emrjz6qbsugmepbv6")
    response = Net::HTTP.get(uri)
    parsed_json = JSON.parse(response)
    byebug
    # params["id"]
  end
end
