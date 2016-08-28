class ArtistsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @artists = Artist.order("#{sort_column} #{sort_direction}")
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def sortable_columns
    ["name", "created_at"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
