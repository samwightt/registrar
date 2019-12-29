class Admin::RootController < ApplicationController
  before_action :authenticate_user!
  layout "admin"

  def index
    authorize self
  end
end