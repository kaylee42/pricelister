class ScraperController < ApplicationController
  def index
  end

  def search
    respond_to do |format|
      format.js {}
    end
  end

  def respond

  end

end