class Api::V1::UsersController < ActionController::API
  # POST to create a new user
  def create
    @user = User.new(user_params)
    @user if @user.save
  end

  # GET to request a user
  def show
    @user = User.find(params[:id])
  end

  # PUT to update a user
  def update
  end

  private
  def user_params
    {
      email: params[:email],
      password: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name]
    }
  end
end
