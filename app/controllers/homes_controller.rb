class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]

  # GET /homes
  # GET /homes.json
  def index
    @homes = Home.all
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
    @users = User.where(homes_id: params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        User.update(current_user.id, :homes_id => @home.id)
        @home.update(:users_id => current_user.id)
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove
    @user = User.find(params[:id])
    @user.update(:homes_id => nil)
    redirect_to (root_url)
  end

  def removeSelf
    User.update(current_user.id, :homes_id => nil)
    redirect_to (root_url)
  end

  def join
    User.update(current_user.id, :homes_id => params[:id])
    redirect_to (Home.find(params[:id]))
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    if current_user.homes_id.blank?
    #  user = current_user
    #  user.update(homes_id: @home.id)
      redirect_to(root_url)
    else
      @home = Home.find(current_user.homes_id)
      redirect_to(root_url) unless @home == Home.find(params[:id])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params.require(:home).permit(:name, :address, :user_id)

    end
end
