class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)  # not the final implementation
    if @user.save
      flash[:success] = "Welcome to Alex's Model App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
# Is the  double flash message problem because there is not a container around the
# erb in the html file?? This also could be the way to fix the footer so its not going
# to the moon.
