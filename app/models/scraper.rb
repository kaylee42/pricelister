class Scraper
  def search(input)
    location_object = Location.new
    clscraper = ClScraper.new(input, location_object.location)
    ebayscraper = EbayScraper.new(input)
    cl_price_object = clscraper.get_prices
    ebay_object = ebayscraper.get_prices
    responses = []
      if cl_price_object == nil
        responses << "Nothing found on Craigslist. Please try again."
      else
        responses << "Searched Craigslist in #{location_object.location}:"
        responses << "The average price of #{cl_price_object.prices.length} #{input}s on Craigslist is $#{cl_price_object.average(cl_price_object.prices).round(2)}."
        responses << "The price with outliers removed is $#{cl_price_object.average(cl_price_object.remove_outliers).round(2)}"
    end
      if ebay_object == nil
        responses << "Nothing found on Ebay. Please try again."
      else
      responses << "The average price of #{ebay_object.prices.length} #{input}s on Ebay is $#{ebay_object.average(ebay_object.prices).round(2)}."
      responses << "The price with outliers removed is $#{ebay_object.average(ebay_object.remove_outliers).round(2)}"
    end
      if cl_price_object == nil || ebay_object == nil
        return nil
      else
      all_sites_average = ((cl_price_object.average(cl_price_object.prices)*cl_price_object.prices.length) + (ebay_object.prices.length*ebay_object.average(ebay_object.prices))) / (cl_price_object.prices.length + ebay_object.prices.length)
      sites_average_wo_outliers = ((cl_price_object.remove_outliers.length*cl_price_object.average(cl_price_object.remove_outliers)) + (ebay_object.remove_outliers.length*ebay_object.average(ebay_object.remove_outliers))) / (cl_price_object.remove_outliers.length + ebay_object.remove_outliers.length)
      responses << "The average price over both sites is $#{all_sites_average.round(2)}, and with outliers removed it is $#{sites_average_wo_outliers.round(2)}."
    end
    return responses
  end
end
