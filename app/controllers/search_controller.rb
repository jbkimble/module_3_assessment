require 'net/http'

class SearchController < ApplicationController

  def index
    @local_stores = StoresData.store_data(params["search"])
  end
end
