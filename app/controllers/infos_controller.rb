class InfosController < ApplicationController
  before_action :authorize_api_key

  def show
    message = Info.welcome_message

    render json: message
  end
end
