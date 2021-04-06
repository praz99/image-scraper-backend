require 'nokogiri'
require 'open-uri'

class ScraperController < ApplicationController
  def index
    url = url_params[:url]
    if Validate.valid_url?(url)
      images = parse_url(url)
      if !images.nil?
        render json: { images: images }
      else
        # rubocop:disable Layout/LineLength
        render json: { message: 'Oops! Looks like there are no images present in this webpage or maybe there is some error in the URL you entered. Please check it and try again.' }
        # rubocop:enable Layout/LineLength
      end
    else
      render json: { message: 'This is not a valid URL.' }
    end
  end

  private

  def parse_url(url)
    uri = URI.open(url)
  rescue SocketError
    nil
  else
    document = Nokogiri::HTML.parse(uri)

    tags = document.xpath('//img')
    images_urls = tags.map { |t| t[:src] }
    images_urls
  end

  def url_params
    params.require(:scraper).permit(:url)
  end
end
