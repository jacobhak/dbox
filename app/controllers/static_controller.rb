class StaticController < ApplicationController
  skip_authorization_check
  def index
    render :index
  end
end
