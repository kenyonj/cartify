class ListsController < ApplicationController
  before_action :authorize_api_key

  def create
    list = List.create

    render json: list
  end
end
