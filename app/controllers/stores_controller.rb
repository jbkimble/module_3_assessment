class StoresController < ApplicationController
  def show
    @store_info = StoreHoursData.store_hours(params["id"])
  end
end
