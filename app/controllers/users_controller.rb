class UsersController < ApplicationController
  #before_action :logged_in_user, only: [:edit, :update]
  #before_action :correct_user,   only: [:edit, :update]


  def show
    @user = User.find(params[:uid])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      NewAccountMailer.submitted(@user).deliver_later
      log_in @user
      flash[:success] = "Welcome to Roomey!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:uid])
  end

  def update
    @user = User.find(params[:uid])
    if @user.update_attributes(user_params)
        flash[:success] = "Profile updated"
        redirect_to @user
    else
        render 'edit'
    end
  end

  # Remove user from apartment.
  def leave_apt
  	@user = User.find(params[:uid])
	flash[:success] = "User removed from apartment"
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # Confirms a logged-in user.
    def logged_in_user
        unless logged_in?
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
    end

    # Confirms the correct user.
    def correct_user
        @user = User.find(params[:uid])
        redirect_to(root_url) unless @user == current_user
    end

end
