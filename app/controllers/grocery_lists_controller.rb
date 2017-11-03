class GroceryListsController < ApplicationController
  before_action :set_grocerylist, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]

  # GET /grocerylist
  # GET /grocerylist.json
  def index
    user = current_user
    @grocerylists = GroceryList.where(homes_id: user.homes_id, shouldBuy: false)
    @commonlybought = GroceryList.where(homes_id: user.homes_id).order(timesBought: :desc).first(10)
  end

  # GET /grocerylist/1
  # GET /grocerylist/1.json
  def show
  end

  # GET /grocerylist/new
  def new
    @grocerylist = GroceryList.new
  end

  # GET /grocerylist/1/edit
  def edit
  end

  # POST /grocerylist
  # POST /grocerylist.json
  def create
    @grocerylist = GroceryList.new(grocery_list_params)

    respond_to do |format|
      if @grocerylist.save
        user = current_user
        @grocerylist.update({homes_id: user.homes_id, shouldBuy: false})
        format.html { redirect_to @grocerylist, notice: 'GroceryList was successfully created.' }
        format.json { render :show, status: :created, location: @grocerylist }
      else
        format.html { render :new }
        format.json { render json: @grocerylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocerylist/1
  # PATCH/PUT /grocerylist/1.json
  def update
    respond_to do |format|
      if @grocerylist.update(grocery_list_params)
        format.html { redirect_to @grocerylist, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocerylist }
      else
        format.html { render :edit }
        format.json { render json: @grocerylist.errors, status: :unprocessable_entity }
      end
    end
  end

  def bought
    redirect_to(root_url)
  end

  # DELETE /grocerylist/1
  # DELETE /grocerylist/1.json
  def destroy
    @grocerylist.destroy
    respond_to do |format|
      format.html { redirect_to grocery_lists_url, notice: 'Home was successfully destroyed.' }
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
    #@home = Home.find(Users.find(current_user.id))
    #redirect_to(root_url) unless @home == Home.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocerylist
      @grocerylist = GroceryList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocery_list_params
      params.require(:grocery_list).permit(:price, :name, :timesBought)

    end
end