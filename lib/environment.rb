require "cheap_flights/version"
require 'nokogiri'
require 'open-uri'

module CheapFlights
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './scraper'