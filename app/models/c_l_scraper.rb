class CLScraper
attr_reader :html, :prices, :url, :location
def initialize(input, location)
  @location = location
  @url = "http://#{location}.craigslist.org/search/sss?query=#{input.gsub(" ", "+")}"
  @html = Nokogiri::HTML(open(url))
  @prices = []
end

def get_prices(pages=3)
  count = 1
  page = html
  while count < pages
    prices << page.search("span.l2 span.price").map {|price| price.text.gsub("$", "").to_f}
    page = next_page(count)
    count += 1
  end
  if prices.flatten == []
    return nil
  else
  array = PriceArray.new(prices.flatten.reject{|price| price<1})
end
end

def next_page(page)
  Nokogiri::HTML(open("#{url}&s=#{page}00"))
end

end
