class VoyagesController < ApplicationController

  skip_before_action :require_login, only: [:index, :show]

  before_action do
    @user = User.find(params[:user_id]) if params[:user_id]
  end


  before_action :ensure_user_match, only: [:edit, :update, :delete]

  helper_method(:captain_is_user?)

  def index
    if @user
      @voyages = @user.voyages
    else
      @voyages = Voyage.all
    end
  end

  def show
    @reservation = Reservation.new
    @voyage = Voyage.find(params[:id])
    # # this is gmaps code from tutorial gmaps4rails
    # binding.pry
    # @hash = Gmaps4rails.build_markers(@voyages) do |voyage, marker|
    #   marker.lat voyage.latitude
    #   marker.lng voyage.longitude
    # end
  end

  def edit
    @voyage = Voyage.find(params[:id])
  end

  def update
    @voyage = Voyage.find(params[:id])
    if @voyage.update(voyage_params)
      redirect_to [@user, @voyage] #review
    else
      redirect_back_or_to [@user, @voyage]
    end
  end

  def new
    @voyage = Voyage.new
  end

  def create
    @voyage = Voyage.new(voyage_params)
    @voyage.captain = current_user

      if @voyage.save
        redirect_to @voyage
          flash[:notice] = "Voyage succesfully created."
      else
        errors.full_messages?
          flash[:notice] = "Sorry, your voyage wasn't created. Please try again!"
        redirect_to new_voyage_path
      end

    # respond_to

  end

  def destroy
    @voyage = Voyage.find(params[:id])
    @voyage.destroy
    redirect_to voyages_path
  end

  #edit needs to be down there to create @voyage before it can be changed.
  def ensure_user_match
      @voyage = Voyage.find(params[:id])
    if @voyage.captain != current_user
      not_found
    end
  end

  def captain_is_user?(captain_id)
   captain_id == current_user.id
  end

private
  def voyage_params
    params.require(:voyage).permit(:title, :location, :description, :vessel_type, :boat_image_url,:voyage_image_url,:start_time, :end_time, :capacity) #will need to add more fields as they are added to model. , add :captain_id later once it's populated
  end

end
