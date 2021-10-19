# Language: Ruby, Level: Level 4
module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end
end
