class CleanupsController < ApplicationController
  before_action :find_cleanup, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @cleanups = Cleanup.all.order('created_at DESC')
    @hash = Gmaps4rails.build_markers(@cleanups) do |cleanup, marker|
      marker.lat cleanup.latitude
      marker.lng cleanup.longitude
    end
  end

  def new
    @cleanup = Cleanup.new
  end

  def create
    @cleanup = Cleanup.new(cleanup_params)

    if @cleanup.save
      redirect_to cleanups_path
    else
      render 'new'
    end
  end

  def show

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

  private


    def destroy
      @cleanup.destroy
      redirect_to cleanups_path
    end

    def cleanup_params
      params.require(:cleanup).permit(:name, :beach_image, :location, :longitude, :latitude, :when, :eventtime, :description, :supplies, :additionalinfo)
    end
end
