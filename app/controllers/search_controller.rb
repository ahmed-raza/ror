class SearchController < ApplicationController
  def search
    @posts = params[:q]
  end
end
