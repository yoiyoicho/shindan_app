class UserSessionsController < ApplicationController
  before_action :require_login, only: :destroy

  def new
    @user = User.new
  end

  def create

    # 脆弱性（SQLインジェクション）
    # passwordに ' OR 'a'='a と入力するとログインできてしまう
    email = params[:email]
    password = params[:password]
    @user = User.where("email = '#{email}'").where("password = '#{password}'").first

    if @user
      login(@user)
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout(current_user)
    redirect_to new_user_session_path, status: :see_other
  end
end
