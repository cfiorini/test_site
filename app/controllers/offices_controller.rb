class OfficesController < ApplicationController
  def index
    @offices = Office.all
    render json: build_response
  end

  private

  def build_response
    {
      locations: @offices
    }
  end
end
