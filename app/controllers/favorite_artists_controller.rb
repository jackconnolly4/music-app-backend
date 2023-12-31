class FavoriteArtistsController < ApplicationController

  def create
    @favorite_artist = FavoriteArtist.new(
      user_id: current_user.id,
      artist_id: params[:artist_id],
      status: "favorited",
    )
    if @favorite_artist.save
      render :show, status: :created
    else
      render json: { errors: @favorite_artist.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @favorite_artists = current_user.favorite_artists.where(status:"favorited")
    render :index
  end

  def destroy
    @favorite_artist= FavoriteArtist.find_by(id params[:id])
    @collected_album.destroy
    render json: { message: "Artist removed from your favorites"}
  end
end