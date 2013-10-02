class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if @location.save
        format.html do
          redirect_to @location, notice: 'location has been added'
        end
      else
        flash[:error] = "Required fields can't be blank"
        format.html { render action: 'new' }
      end
    end
  end

  def show
  end

  def index
    @location = Location.all
  end
end
