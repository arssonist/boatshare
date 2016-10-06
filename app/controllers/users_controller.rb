class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  #
  skip_before_action :require_login, only: [:index, :new, :create]

# This is here only becuase maybe the user page need the voyage info? So far it has not.
  # before_action do
  #   @voyage = Voyage.find(params[:voyage_id]) if params[:voyage_id]
  # end
  # GET /users
  # GET /users.json
  def index
  @user = User.find(params[:id])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @reservation = @user.reservations
    # find(params[:id])
    # @voyages = User.voyages
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      auto_login(@user)
      redirect_to(:voyages, notice: 'User was successfully created') #redirects user to index
    end
    respond_to do |format|
      if @user.save
        format.html {  }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :bio, :password, :password_confirmation)
  end
end
