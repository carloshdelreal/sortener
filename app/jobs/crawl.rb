# frozen_string_literal: true

require 'httparty'
require 'nokogiri'

class Crawl < ApplicationJob
  queue_as :default

  def perform(url)
    unparsed_html = nil

    begin
      unparsed_html ||= HTTParty.get(url.source)
    rescue
      return
    end

    return if unparsed_html.code != 200
    
    page = Nokogiri::HTML(unparsed_html)
    
    url.title = page.at_css('title').text
    url.save
  end
end
