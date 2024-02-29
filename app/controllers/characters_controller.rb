class CharactersController < ApplicationController
  def index
    @characters = Character.all



    if params[:query].present?
      @characters = Character.search_by_name_and_univers(params[:query])
    else
      @characters = Character.all
    end
  end

  def show
    @character = Character.find(params[:id])
    @booking = Booking.new
  end
end
