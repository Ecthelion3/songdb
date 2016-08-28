class SongsController < ApplicationController
  def index
    @songs = Song.all
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song.artist, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song}
      else
        format.html { render :nothing => true }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @artist = @song.artist
    @song.destroy
    respond_to do |format|
      format.html { redirect_to @artist, notice: 'Song was succesfully deleted.' }
    end
  end

  def destroy_all
    @artist = Artist.find(params[:id])
    @artist.songs.destroy_all
    respond_to do |format|
      format.html {redirect_to @artist, notice: 'All songs of this artist have been deleted' }
    end
  end

  def song_params
    params.require(:song).permit(:name,:artist_id)
  end
end
