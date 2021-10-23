class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:new, :create, :destroy]
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @boormark.destroy
  end

  private

  def set_bookmark
    @list = List.find(params[:list_id])
  end

  def params_bookmark
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
