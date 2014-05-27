class HashtagsController < ApplicationController

  def show
    @search = Search.new(term: hashtag)
    # @search = Search.new(hashtag)

  end

  private

  def hashtag
    "##{params[:id]}"
  end

end