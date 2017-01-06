class StoreHoursData
  attr_reader :name, :hours, :store_type, :address, :state, :city, :zip

  def initialize(attributes={})
    @name = attributes["longName"]
    @hours = attributes["hoursAmPm"]
    @store_type = attributes["storeType"]
    @address = attributes["address"]
    @state = attributes["region"]
    @city = attributes["city"]
    @zip = attributes["postalCode"]
  end

  def self.store_hours(store_id)
    StoreHoursData.new(StoreHoursService.get_stores_hours(store_id))
  end

end
