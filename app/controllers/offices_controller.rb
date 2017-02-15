class OfficesController < ApplicationController
  def index
    @offices = Office.all
    render json: build_response
  end

  private

  def build_response
    res = {
      mapwidth: "1200",
      mapheight: "760",
      categories: []
    }

    res[:levels] = []
    res[:levels][0] = {
      id: "world",
      title: "World",
      map: "images/maps/world.svg",
      locations: @offices
    }

    res
  end

end
