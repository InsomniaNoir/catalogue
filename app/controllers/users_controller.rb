class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User Information Updated"
    else
      flash[:error] = "Invalid User Information"
    end
    redirect_to edit_user_registrationg_path
  end


private

  def user_params
    params.require(:user).permit(:name)
  end
end