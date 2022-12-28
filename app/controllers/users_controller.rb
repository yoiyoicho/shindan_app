class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:user][:email], password: params[:user][:password])
    if @user.save
      redirect_to posts_url
    else
      render :new, status: :unprocessable_entity
    end
  end
end
