class StylistsController < ApplicationController

  def new
    @stylist = Stylist.new
  end
end
