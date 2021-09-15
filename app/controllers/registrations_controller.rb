class RegistrationsController < ApplicationController
  def create
    @user = User.create!(
      name: params['user']['name'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation'],
      type: params['user']['type']
    )

    if @user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: { status: 500 }
    end
  end
end