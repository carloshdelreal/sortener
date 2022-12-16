class UrlsController < ApplicationController
  def create
    @url = Url.new(url_params)
    
    if @url.save
      Crawl.perform_later(@url)
      render json: @url
    else
      render json: { :errors => @url.errors.full_messages }
    end
  end

  def index
    urls = Url.left_joins(:visits)
    .select(
        'urls.*, COUNT(visits.id) AS count'
      )
    .group(:id)
    .order('COUNT(visits.id) DESC')
    .limit(100)
    render json: urls
  end

  def show
    @url = Url.find_by(id: params[:id])

    if @url
      render json: @url
    else
      render :text => "404 Not found", :status => 404
    end
  end

  private

  def url_params
    params.require(:url).permit(:source)
  end
end
