# Language: Ruby, Level: Level 4
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[session:][email:].downcase)
    if user && user.authenticate(params[session:][password:])
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end
end
