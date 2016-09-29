class ReservationsController < ApplicationController

    before_action do
      @user = Reservation.find(params[:user_id]) if params[:user_id]

    end

    def index
      # if @reservation
      #   @voyages = @reservation.voyages
      # else
      #   @voyages = Voyage.all
      # end
    end

    def show
      @reservation = Reservation.find(params[:id])
    end

    def edit
      # @voyage = Voyage.find(params[:id])
    end

    def update
      # @voyage = Voyage.find(params[:id])
      # if @voyage.update(voyage_params)
      #   redirect_to [@reservation, @voyage] #review
      # else
      #   redirect_back_or_to [@reservation, @voyage]
      # end
    end

    def new
      @reservation = Reservation.new
      @voyage = Voyage.find(params[:voyage_id])
    end

    def create
      @reservation = Reservation.new
      @reservation.passenger_id = current_user.id
      @reservation.voyage_id = params[:voyage_id]

      if @reservation.save
        redirect_to "/voyages/#{params[:voyage_id]}" #Update this to redirect_to /voyages/reservation/instance
      else
        redirect_to '/voyages' #update this to redirect_to voyages/reservation/new
      end

    end

    def destroy
      # @voyage = Voyage.find(params[:id])
      # @voyage.destroy
      # redirect_to user_voyages_path
    end

    def ensure_user_match
      # if @voyage.captain != @reservation
      #   not_found
      # end
    end

  private
    # def reservation_params
    #   params.require(:reservation).permit(:title, :captain_id) #will need to add more fields as they are added to model
    # end

  end
