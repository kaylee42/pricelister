class ScraperController < ApplicationController
  def index
    @scrape = Scraper.new
  end

  def search
    scrape = Scraper.new
    @responses = scrape.search(params[:search_term])
    respond_to do |format|
      format.js {}
    end
  end

  def respond

  end

end
