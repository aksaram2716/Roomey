class FinancialRecordsController < ApplicationController
  before_action :set_financialrecord, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:show, :edit, :update]

  # GET /financialrecord
  # GET /financialrecord.json
  def index
    user = current_user
    @financialrecord = FinancialRecord.all
  end

  # GET /financialrecord/1
  # GET /financialrecord/1.json
  def show
  end

  # GET /financialrecord/new
  def new
    @financialrecord = FinancialRecord.new
  end

  # GET /financialrecord/1/edit
  def edit
  end

  # POST /financialrecord
  # POST /financialrecord.json
  def create
    @financialrecord = FinancialRecord.new(financial_record_params)

    respond_to do |format|
      if @financialrecord.save
        user = current_user
        #@financialrecord.update(homes_id: user.homes_id, timesBought: 0, shouldBuy: true)
        format.html { redirect_to @financialrecord, notice: 'Financial Record was successfully created.' }
        format.json { render :show, status: :created, location: @financialrecord }
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
      if @financialrecord.update(financial_record_params)
        format.html { redirect_to @financialrecord, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @financialrecord }
      else
        format.html { render :edit }
        format.json { render json: @financialrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financialrecord/1
  # DELETE /financialrecord/1.json
  def destroy
    @financialrecord.update(paid: true, datePaid:)
       respond_to do |format|
         format.html { redirect_to financial_records_url, notice: 'Payment was successfully Awknowledged.' }
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
    def set_financialrecord
      @financialrecord = FinancialRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_record_params
      params.require(:financial_record).permit(:amount, :homes_id, :dateOwed, :datePaid,  :receiverUID, :recieverSID, :paid, :users_id)

    end
end