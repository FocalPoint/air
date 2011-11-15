class AirportsController < ApplicationController
  
  def show
    @airport = Airport.find(params[:id])
  end
  
  def index
    if params[:city]
      @airports = Airport.where(["city LIKE ?", "%#{params[:city]}%"])
    else @airports = Airport.all
    end
  end
end