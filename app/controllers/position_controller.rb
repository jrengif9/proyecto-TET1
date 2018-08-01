class PositionController < ApplicationController
  before_action :authenticate_user!


  def getPosition
  	@positions = (Position.where({user: current_user.id}).reverse)[0,10]
  end

  def save
  	respond_to do |format|
	    latitud = params[:lat]
	    longitud = params[:lon]
	    @position = Position.new(user: current_user.id,latitud: latitud, longitud: longitud)
	    if @position.save
	          format.html { redirect_to get_Position_path }
	    else
	        redirect_to get_Position_path
	    end
	end

  end

  def show
  	@results = Position.where({user: current_user.id})
  end



end