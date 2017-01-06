require 'net/http'

class SearchController < ApplicationController

  def index
    uri = URI("https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,city,storeType,name,longName,phone,distance&pageSize=16&apiKey=7a3heu7emrjz6qbsugmepbv6")
    response = Net::HTTP.get(uri)
    this = JSON.parse(response)
    byebug
# params["search"]

  end
end
