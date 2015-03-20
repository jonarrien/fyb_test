class ApiDataController < ApplicationController
  def fill_data
  end

  def create
    session[:api_data] = params[:api_data]
    redirect_to offers_path
  end
end
