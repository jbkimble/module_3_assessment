class StoresService

  def self.close_stores(zipcode)
    uri = URI("https://api.bestbuy.com/v1/stores(area(#{zipcode},25))?format=json&show=storeId,city,storeType,name,longName,phone,distance&pageSize=16&apiKey=#{ENV['bestbuy_key']}")
    response = Net::HTTP.get(uri)
    parsed_json = JSON.parse(response)
    parsed_json["stores"]
  end
end
