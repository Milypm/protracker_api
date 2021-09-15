class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  # GET /users or /users.json
  def index
    @users = User.all
    json_response(@users)
  end

  # GET /users/1/edit
  # def edit; end

  # GET /users/1 or /users/1.json
  def show
    json_response(@user)
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    @user.update(user_params)
    head :no_content
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    reset_session if @user == current_user
    @user.destroy
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.permit(:name, :type, :password_digest)
  end

  def set_user
    @user = User.find(params[:id])
  end
end