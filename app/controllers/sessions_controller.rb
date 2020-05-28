class SessionsController < ApplicationController
  def new
  end

  def create

    user = User.find__by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
            #Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right yet
      render 'new'
    end
  end

  def destroy
  end

end
