class OffersController < ApplicationController
  def index
    opts = session[:api_data]
    @client = Fyber::Client.new(opts)
  end
end
