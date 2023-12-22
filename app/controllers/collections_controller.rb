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
end
