class PicturesController < ApplicationController


  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to :action => 'list'
    else
      @events = Event.all
      render :action => 'new'
    end
  end

  # create new picture
  # tell rails  that we will create a new object
  def new
    @picture = Picture.new
    @events = Event.all # grabs all the events from the database
    # and puts them in the array subject for choose or input in picture new
  end

  def picture_params
    params.require(:pictures).permit(:name, :description)
  end

  # list all pictures
  def list
    @pictures = Picture.all
  end

  #show specific picture by id
  def show
    @picture = Picture.find(params[:id])
    # tell rails to find pictures by params[:id] in table Picture
    # to store in picture object
  end

  # edit pictures
  # the same as show . but we need to know the picture id for editable
  def edit
    @picture = Picture.find(params[:id])
    @events = Event.all # tell rails to search the pictures table to store each row
    # it finds in the @events instance object
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attribute(picture_param)
      redirect_to :action => 'show', id => @picture
    else
      @event = Event.all
      render :action => 'edit'
    end
  end

  def delete
    Picture.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def book_param
    params.require(:picture).permit(:name, :description)
  end

  def show_events
    @event = Event.find(params[:id])
  end

end
