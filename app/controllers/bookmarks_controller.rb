class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = Bookmark.new
    @bookmark.save

  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
