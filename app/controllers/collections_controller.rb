class CollectionsController < ApplicationController
  def create
    @collected_album = Collection.new(
      user_id: current_user.id,
      album_id: params[:album_id],
      status: "added",
    )
    if @collected_album.save
      render :show, status: :created
    else
      render json: { errors: @collected_album.errors.full_messages }, status: :bad_request
    end
  end

  def index 
    @collections = current_user.collections.where(status:"added")
    render :index
  end

  def destroy
    @collected_album = Collection.find_by(id params[:id])
    @collected_album.destroy
    render json: { message: "Album removed from your collection"}
  end
end
