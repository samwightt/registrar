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

  def show
    @hackathon = Hackathon.find(params[:id])
  end

  def edit
    @hackathon = Hackathon.find(params[:id])
  end

  def update
    @hackathon = Hackathon.find(params[:id])

    respond_to do |format|
      if @hackathon.update(new_params)
        format.html { redirect_to [:admin, @hackathon ] }
      else
        format.js
      end
    end
  end

  private

  def new_params
    params.require(:hackathon).permit(:name, :description, :start_date, :end_date, :status)
  end
end