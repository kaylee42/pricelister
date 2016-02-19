class ScraperController < ApplicationController
  def index
    @scrape = Scraper.new
  end

  def search
    scrape = Scraper.new
    @responses = scrape.search(params[:search_term], params[:market])
    respond_to do |format|
      format.js {}
    end
  end

  def respond
    scrape = Scraper.new
    state = params[:state]
    @markets = scrape.markets[state]
    respond_to do |format|
      format.js {}
    end
  end

end
