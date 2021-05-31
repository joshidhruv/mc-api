class WelcomeController < ApplicationController
  def index
    render json: { status: "online"}
  end
end
