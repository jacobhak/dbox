class ImagesController < ApplicationController
  load_and_authorize_resource
  
  def index
  	@images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
  	@image = Image.new
  end

  def create
  	@image = Image.create(params[:image])
    puts current_user
    @image.user = current_user
    @image.save

  	redirect_to images_path
  end

  def tag
    @image = Image.find(params[:id])
    tag = Tag.find_or_create_by_name(params[:name])

    @image.tags << tag

    redirect_to @image
  end
end
