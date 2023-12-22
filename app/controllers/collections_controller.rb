class CollectionsController < ApplicationController
  def create
    @collection = Collection.new(
      user_id: current_user.id,
      album_id: params[:album_id],
      status: "added",
    )
    if @collection.save
      render json: { message: "Album added to collection!" }, status: :created
    else
      render json: { errors: @collection.errors.full_messages }, status: :bad_request
    end
  end

  def index 
    @collections = current_user.collections.where(status:"added")
    render :index
  end
end
