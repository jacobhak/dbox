class ImagesController < ApplicationController
  load_and_authorize_resource
  
  def index
  	@images = Image.all
  end

  def new
  	@image = Image.new
  end

  def create
  	@image = Image.create(params[:image])

  	redirect_to images_path
  end
end
