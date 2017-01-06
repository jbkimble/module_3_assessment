class StoresData
  attr_reader :city, :longname, :phone, :distance, :store_type
  def initialize(attributes={})
    @city = attributes["city"]
    @longname = attributes["longName"]
    @phone = attributes["phone"]
    @distance = attributes["distance"]
    @store_type = attributes["storeType"]
  end

  def self.store_data(zipcode)
    StoresService.close_stores(zipcode).map do |store|
      StoresData.new(store)
    end
  end
end
