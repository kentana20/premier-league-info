# encoding: UTF-8

require 'nokogiri'
require 'open-uri'

module Scraper

  TABLE_URL    = 'http://www.espnfc.co.uk/barclays-premier-league/23/table'
  FIXTURE_URL  = 'http://www.espnfc.com/fixtures/_/league/eng.1/barclays-premier-league?cc=4716'
  RESULT_URL   = 'http://www.espnfc.co.uk/barclays-premier-league/23/scores'
  TRANSFER_URL = 'http://www.espnfc.us/barclays-premier-league/23/transfers'

  def self.table_list
    return Nokogiri::HTML(open(TABLE_URL))
  end

  def self.fixture_list
    return Nokogiri::HTML(open(FIXTURE_URL))
  end

  def self.result_list
    return Nokogiri::HTML(open(RESULT_URL))
  end

  def self.transfer_list
    return Nokogiri::HTML(open(TRANSFER_URL))
  end

end
