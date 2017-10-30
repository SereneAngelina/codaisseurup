class PhotosController < ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @event = @photo.event

    @photo.destroy
    @photos = Photo.where(event_id: @event.id)

    # if @event.user.id == current_user.id
    #   photo.destroy
    #
    #   redirect_to edit_event_path(@event), notice: "Photo successfully removed"
    # else
    #   redirect_to @event, notice: "Cannot delete that photo"

    respond_to do |format|
      format.html { redirect_to event_path(@event) }
      format.js
    end
  end
end
