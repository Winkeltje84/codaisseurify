class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    set_artist
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to artist_path(@artist.id)
    else
      redirect_to new_artist_song_path(@artist.id)
    end
  end

  def destroy
    set_artist
    @song.destroy
    redirect_to artist_path(@artist.id)
  end


  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end

end
