class StoreHoursService

  def self.get_stores_hours(store_id)
    uri = URI("https://api.bestbuy.com/v1/stores(storeId=#{store_id})?format=json&show=storeType,longName,hoursAmPm,address,city,postalCode,region&apiKey=7a3heu7emrjz6qbsugmepbv6")
    response = Net::HTTP.get(uri)
    parsed_json = JSON.parse(response)
    parsed_json["stores"].first
  end
  
end
