class FavoriteArtistsController < ApplicationController

  def create
    @favorite_artist = Favorite_Artist.new(
      user_id: current_user.id,
      artist_id: params[:artist_id],
      status: "favorited",
    )
    if @Favorite_Artist.save
      render :show, status: :created
    else
      render json: { errors: @collected_album.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @favorite_artists = current_user.favorite_artists.where(status:"favorited")
    render :index
  end
end