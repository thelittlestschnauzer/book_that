class StylistsController < ApplicationController

  def index
    @stylists = Stylist.all.order("created_at DESC")
  end

  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = @stylist.services.build
  end

  private

  def find_stylist
    @stylist = Stylist.find(params[:id])
  end

  def stylist_params
    params.require(:stylist).permit(:name, :bio, :image, services_attributes: [:id, :title, :_destroy])
  end

end
