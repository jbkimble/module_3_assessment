class StoresController < ApplicationController
  def show
    @store_info = StoreHoursData.store_hours(params["id"])
    # @store_info = StoreHoursService.get_stores_hours(params["id"])
  end
end
