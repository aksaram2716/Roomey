class HomesController < ApplicationController
  def new
  end

  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  def update
  end
end
