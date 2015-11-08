class CleanupsController < ApplicationController
  before_action :find_cleanup, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @cleanups = Cleanup.all.where("eventtimeframe>=?", Date.today)
  end

  def new
    @cleanup = current_user.cleanups.build
  end

  def create
    @cleanup = current_user.cleanups.build(cleanup_params)

    if @cleanup.save
      redirect_to cleanups_path
    else
      render 'new'
    end
  end

  def show
    @hash = Gmaps4rails.build_markers(@cleanup) do |cleanup, marker|
      marker.lat cleanup.latitude
      marker.lng cleanup.longitude
    end
  end

  def update
    if @cleanup.update(cleanup_params)
      redirect_to cleanup_path(@cleanup)
    else
      render 'edit'
    end
  end

  def edit

  end

  def find_cleanup
    @cleanup = Cleanup.find(params[:id])
  end

  def destroy
    @cleanup.destroy
    redirect_to cleanups_path
  end

  def gpsify
    # TODO: Remind gavin about security
    path = Rails.root.join("tmp/uploads/cache", params[:cache_id]).to_s

    exifr = EXIFR::JPEG.new(path)
    gps = exifr.gps
    if gps
      @lat = gps.latitude
      @lng = gps.longitude
    else
      render nothing: true
    end
  end

  private

    def cleanup_params
      params.require(:cleanup).permit(:name, :beach_image, :location, :longitude, :latitude, :eventtimeframe, :eventtime, :description, :supplies, :additionalinfo)
    end

end
