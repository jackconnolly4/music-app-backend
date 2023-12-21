class ArtistsController < ApplicationController
  def index
    @artists = Artist.all 
    render :index
  end 

  def show
    @artist = Artist.find_by(id: params[:id])
    render :show
  end

  def create
    @artist = Artist.create(
      name: params[:name],
      image_url: params[:image_url],
      bio: params[:bio],
      genre: params[:genre],
    )
    render :show
  end
  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.update(
      name: params[:name] || @artist.name,
      image_url: params[:image_url] || @artist.image_url,
      bio: params[:bio] || @artist.bio,
      genre: params[:genre] || @artist.genre,
    )
    render :show
  end

  def destroy
    @artist = Artist.find_by(id: params[:id])
    @artist.destroy
    render json: {message: "Artist has been deleted" }
  end

end
