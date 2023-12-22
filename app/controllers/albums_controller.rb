class AlbumsController < ApplicationController
  def index
    @albums = Album.all 
    render :index
  end

  def show 
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def create
    @album = Album.create(
      title: params[:title],
      artist_id: params[:artist_id],
      image_url: params[:image_url],
      description: params[:description],
      year: params[:year],
      genre: params[:genre],
    )
    render :show
  end 


  def update
    @album = Album.find_by(id: params[:id])
    @album.update(
      title: params[:title] || @album.title,
      artist_id: params[:artist_id] || @album.artist_id,
      image_url: params[:image_url] || @album.image_url,
      description: params[:description] || @album.description,
      year: params[:year] || @album.year,
      genre: params[:genre] || @album.genre,
    )
    render :show
  end 

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    render json: { message: "Album deleted successfully" }
  end

end
