class Api::V1::SessionsController < ActionController::API
  # GET login/auth
  def login
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      # create_session
      render json: UserSerializer.new(@user)
    else
      render json: { errors: { messages: 'Invalid email or password.' } }, status: :unauthorized
    end
  end
end
