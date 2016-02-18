class ScraperController < ApplicationController
  def index
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
