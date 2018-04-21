class LoginController < ApplicationController
  # POST /login
  def login
    # find
    login_user = User.find_by(user_id: params[:id], password: params[:pwd])
    if login_user != nil
      # login SUCCESS
      render json: { token: login_user.token, message: '', resultCode: '0' }
    else
      # login FAILED
      render json: { message: 'no auth', resultCode: '999' }
    end
  end
end
