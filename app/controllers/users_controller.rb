class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        flash[:notice] = "Thank you! We'll be in touch"
        format.html { render action: "index"}
      end
    end
  end


  def user_params
    params.require(:user).permit(:email)
  end
end
