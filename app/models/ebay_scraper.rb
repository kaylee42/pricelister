class EbayScraper
  attr_reader :html, :prices, :url
  def initialize(input)
    @url = "http://www.ebay.com/sch/i.html?LH_BIN=1&_ipg=100&rt=nc&_nkw=#{input.gsub(" ", "+")}"
    @html = Nokogiri::HTML(open(url))
    @prices = []
  end

  def get_prices(pages=3)
    count = 1
    page = html
    while count < pages
      prices << page.search("ul.lvprices li.lvprice span.bold").map {|price| price.text.gsub("$", "").to_f}
      page = next_page(count)
      count += 1
    end
      if prices.flatten == []
        return nil
      else
      array = PriceArray.new(prices.flatten.reject{|price| price<1})
      # binding.pry
    end
   end

   def next_page(page)
     Nokogiri::HTML(open("#{url}&_pgn=#{page}"))
   end

end
