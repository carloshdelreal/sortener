class SortenerController < ApplicationController
  def sortener
    @url = Url.find_by(url: params[:sorted_url])
    @url.visits.push(Visit.new)

    if @url
      redirect_to @url.source
    else
      render :text => "404 Not found", :status => 404
    end
  end
end
