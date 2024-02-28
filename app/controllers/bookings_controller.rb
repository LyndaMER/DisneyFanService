class BookingsController < ApplicationController
  before_action :set_character, only: %i[create index]

  def create
    @booking = Booking.new(booking_params)
    @booking.character = @character
    @booking.user = current_user
    if @booking.save
      redirect_to character_bookings_path(@character), notice: 'Votre réservation a bien été prise en compte !'
    else
      render "characters/show", status: :unprocessable_entity
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
