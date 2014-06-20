class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def authorize_api_key
    api = Api.find_by(api_key: api_key_from_params) || NullApi.new
    unless api.active?
      return_unauthorized
    end
  end

  def api_key_from_params
    params[:api_key]
  end

  def return_unauthorized
    message = Info.unauthorized_message
    render json: message
  end
end
