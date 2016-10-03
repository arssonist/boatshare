class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
     @user = User.new
   end

   def create
     if @user = login(params[:email], params[:password])
       redirect_back_or_to(:voyages, notice: 'Login successful')
       
  # made changes to redirect to voyages
     else
       flash.now[:alert] = 'Login failed'
       render action: 'new'
     end
   end

   def destroy
     logout
     redirect_to(:voyages, notice: 'Logged out!')
     #made changes to redirect to voyages
   end
end
