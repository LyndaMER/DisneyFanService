class BookingsController < ApplicationController
  before_action :set_character, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = @character.bookings.new(booking_params)

    if @booking.save
      redirect_to character_bookings_path(@character), notice: 'Booking created successfully.'
    else
      render :new
    end
  end

  def index
    @bookings = @character.bookings
  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
