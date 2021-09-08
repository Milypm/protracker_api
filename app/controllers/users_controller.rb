class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  # GET /users or /users.json
  # def index
  #   @users = User.all
  # end

  # GET /users/1 or /users/1.json
  # def show; end

  # GET /users/new
  # def create
  #   @user = User.create!(user_params)
  #   @user = User.new
  # end

  # GET /users/1/edit
  def edit; end

  # POST /users or /users.json
  def create
    user = User.create!(
      name: params['user']['name'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation'],
      type: params['user']['type']
    )

    if user
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 500 }
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    reset_session if @user == current_user
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'User was successfully deleted.' }
    end
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