class OffersController < ApplicationController
  def index
    opts = session[:api_data]
    @results = Fyber::Client.new(opts).search()
  end
end
