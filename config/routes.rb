Rails.application.routes.draw do
  root "scraper#index"

  get "scraper/index", to: "scraper#index"
  post "scraper/search", to: "scraper#search"
  get "scraper/respond", to: "scraper#respond"

end
