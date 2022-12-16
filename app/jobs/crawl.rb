# frozen_string_literal: true

require 'httparty'
require 'nokogiri'

class Crawl < ApplicationJob
  queue_as :default

  def perform(url)
    response = nil

    begin
      response ||= HTTParty.get(url.source)
    rescue
      return
    end

    return if response.code != 200
    
    page = Nokogiri::HTML(response.body)
    
    url.title = page.at_css('title').text
    url.save
  end
end
