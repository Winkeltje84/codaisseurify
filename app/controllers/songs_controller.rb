class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    @song = @artist.song.build(song_params)
    if @song.save
      redirect_to new_artist_song_path(@artist.id)
    end


  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name)
  end

end
