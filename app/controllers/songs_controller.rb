class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to artist_path(@artist.id)
    else
      redirect_to new_artist_song_path(@artist.id)
    end


  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end

end
