class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @the_photo = Photo.find_by({ :id => params[:id] })
  end

  def new_form

  end

  def create_row

    @the_caption = params[:the_caption]
    @the_source = params[:the_source]

  end

  def destroy
    @the_photo = Photo.find_by({ :id => params[:id] })
    @the_photo.destroy

  end

  def edit_form
    @the_photo = Photo.find(params[:id])
  end

  def update_row
  end

end
