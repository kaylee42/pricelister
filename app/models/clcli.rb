class CLCLI
  attr_accessor :location_object, :ebayscraper, :clscraper

  def call
    puts "Welcome to our dumb app!"
    puts "  type help for a list of commands"
    self.location_object = Location.new
    run
  end

  def get_user_input
    gets.chomp.strip
  end

  def run
    puts "What item do you want to sell today?"
    input = get_user_input
    if input == "help"
      help
    elsif input == "info"
      filtering_report
    elsif input == "set location" || input == "s"
      location_object.set_location
    elsif input == 'list location' || input == "l"
      puts "  Your Craigslist location is currently: #{location_object.location}"
    elsif input == "open"
      if clscraper == nil
        puts "You have not searched yet!"
      else
      system("open", "#{clscraper.url}")
      system("open", "#{ebayscraper.url}")
      end
    elsif input == "exit"
      exit
    else
      puts "currently searching..."
      search(input)
    end
    run
  end

  def search(input)
    self.clscraper = ClScraper.new(input, location_object.location)
    self.ebayscraper = EbayScraper.new(input)
    cl_price_object = clscraper.get_prices
    ebay_object = ebayscraper.get_prices
      if cl_price_object == nil
        puts "Nothing found on Craigslist. Please try again."
      else
        puts "Searched Craigslist in #{location_object.location}:"
        puts "The average price of #{cl_price_object.prices.length} #{input}s on Craigslist is $#{cl_price_object.average(cl_price_object.prices).round(2)}."
        puts "The price with outliers removed is $#{cl_price_object.average(cl_price_object.remove_outliers).round(2)}"
    end
      if ebay_object == nil
        puts "Nothing found on Ebay. Please try again."
      else
      puts "The average price of #{ebay_object.prices.length} #{input}s on Ebay is $#{ebay_object.average(ebay_object.prices).round(2)}."
      puts "The price with outliers removed is $#{ebay_object.average(ebay_object.remove_outliers).round(2)}"
    end
      if cl_price_object == nil || ebay_object == nil
        return nil
      else
      all_sites_average = ((cl_price_object.average(cl_price_object.prices)*cl_price_object.prices.length) + (ebay_object.prices.length*ebay_object.average(ebay_object.prices))) / (cl_price_object.prices.length + ebay_object.prices.length)
      sites_average_wo_outliers = ((cl_price_object.remove_outliers.length*cl_price_object.average(cl_price_object.remove_outliers)) + (ebay_object.remove_outliers.length*ebay_object.average(ebay_object.remove_outliers))) / (cl_price_object.remove_outliers.length + ebay_object.remove_outliers.length)
      puts "The average price over both sites is $#{all_sites_average.round(2)}, and with outliers removed it is $#{sites_average_wo_outliers.round(2)}."
    end
  end

  def help
    puts "Type 'exit' to exit"
    puts "Type 'info' to learn about how we filtered outliers"
    puts "Type 'set location' to change your Craigslist location."
    puts "Type 'list location' to see your Craigslist location."
    puts "Type 'help' to view this menu again."
    puts "Type 'open' to open the last search in the browser."
    puts "Type anything else to search for an average price."
  end

  def filtering_report

    puts ""
    puts "Outliers are filtered using inter quartile ranges. To open an explanation in your browser type 'more', to return to main menu type 'exit'"
    input = get_user_input
    if input == "more"
      system("open", 'http://www.mathwords.com/o/outlier.htm')
    else
      return
    end
  end

end
