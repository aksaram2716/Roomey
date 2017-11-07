class EventsController < ApplicationController
  before_action :set_events, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]

  # GET /event
  # GET /event.json
  def index
    user = current_user
    @event = Event.all
  end

  # GET /event/1
  # GET /event/1.json
  def show
  end

  # GET /event/new
  def new
  end

  # GET /event/1/edit
  def edit
  end

  # POST /event
  # POST /event.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        user = current_user
        @event.update(homes_id: user.homes_id, users_id: user.id, paid: false)
        format.html { redirect_to @event, notice: 'Financial Record was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @financialrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financialrecord/1
  # PATCH/PUT /financialrecord/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @financialrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event/1
  # DELETE /event/1.json
  def destroy
    @event.update(paid: true, datePaid: DateTime.now.to_date)
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Payment was successfully Awknowledged.' }
      format.json { head :no_content }
    end
  end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash.now[:danger] = "Please log in."
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
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:id, :name, :description, :creationDate, :eventDate, :user_id)

  end
end