class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    set_artist
    @songs = @artist.songs
  end

  def destroy
    set_artist
    @artist.destroy
    redirect_to root_path
  end

private

def set_artist
  @artist = Artist.find(params[:id])
end

end
