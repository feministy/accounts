class Api::V1::UsersController < ActionController::API
  # POST to create a new user
  def create
  end

  # GET to request a user
  def show
    @user = User.find(params[:id])
  end

  # PUT to update a user
  def update
  end
end
