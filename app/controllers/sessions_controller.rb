class SessionsController < ApplicationController
  def create
    unless request.env["omniauth.auth"][:uid]
      flash[:danger] = "認証に失敗しました"
      redirect_to root_url
    end

    user_data = request.env["omniauth.auth"]
    user = User.find_by(uid: user_data[:uid])

    if user
      helpers.log_in user
      flash[:success] = "ログインしました"
      redirect_to root_url
    else
      new_user = User.new(
        uid: user_data[:uid],
        name: user_data[:info][:name],
      )
      if new_user.save
        helpers.log_in new_user
        flash[:success] = "認証に成功しました"
      else
        flash[:danger] = "認証時に予期せぬエラーが発生しました"
      end
      redirect_to root_url
    end
  end

  def destroy
    helpers.log_out if helpers.logged_in?
    flash[:success] = "ログアウトしました"
    redirect_to root_url
  end
end
