class Admin::HackathonsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"

  def index
    @hackathons = Hackathon.page(params[:page]).per(20)
  end

  def new
    @hackathon = Hackathon.new
  end

  def create
    @hackathon = Hackathon.new(new_params)

    respond_to do |format|
      if @hackathon.save
        format.html { redirect_to [:admin, @hackathon] }
      else
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def new_params
    params.require(:hackathon).permit(:name, :description, :start_date, :end_date, :status)
  end
end