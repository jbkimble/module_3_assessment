class Api::V1::ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Item.all, :only => [:id, :name, :description, :image_url]
  end

  def show
    render json: Item.find(params[:id]), :only => [:id, :name, :description, :image_url]
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      head :no_content
    end
  end

  def create
      item = Item.new(item_params)
    if item.save
      render json: item, :only => [:id, :name, :description, :image_url]
    else
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, :description, :image_url)
    end
end
