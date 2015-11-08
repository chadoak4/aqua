class AttendeesController < ApplicationController
  before_action :find_cleanup


  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = Attendee.new(attendee_params)
    @attendee.cleanup_id = @cleanup.id
    @attendee.user_id = current_user.id

    if @attendee.save
      redirect_to cleanup_path(@cleanup)
    else
      render 'new'
    end
  end


  private

  def attendee_params
    params.require(:attendee).permit(:attending, :comment, :guests)
  end

  def find_cleanup
    @cleanup = Cleanup.find(params[:cleanup_id])
  end



end
