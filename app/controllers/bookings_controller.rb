class BookingsController < ApplicationController
  before_action :set_character, only: %i[create index]

  def create
    @booking = Booking.new(booking_params)
    @booking.character = @character

    if user_signed_in?
      @booking.user = current_user

      if @booking.save
        redirect_to character_bookings_path(@character), notice: 'Votre réservation a bien été prise en compte !'
      else
        render "characters/show", status: :unprocessable_entity
      end
    else
      flash[:alert] = "Vous devez être connecté pour réserver un personnage"
      redirect_to new_user_session_path
    end
  end

  def index
    @bookings = @character.bookings
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_back fallback_location: root_path, notice: 'La réservation est supprimé avec succès.'
  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
