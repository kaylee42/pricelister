class Scraper
attr_reader :markets, :states
def initialize
  @markets = {"alabama"=>
  ["auburn",
   "bham",
   "columbusga",
   "dothan",
   "shoals",
   "gadsden",
   "huntsville",
   "mobile",
   "montgomery",
   "tuscaloosa"],
 "alaska"=>["anchorage", "fairbanks", "kenai", "juneau"],
 "arizona"=>
  ["flagstaff",
   "mohave",
   "phoenix",
   "prescott",
   "showlow",
   "sierravista",
   "tucson",
   "yuma"],
 "arkansas"=>["fayar", "fortsmith", "jonesboro", "littlerock", "memphis", "texarkana"],
 "california"=>
  ["bakersfield",
   "chico",
   "fresno",
   "goldcountry",
   "hanford",
   "humboldt",
   "imperial",
   "inlandempire",
   "losangeles",
   "mendocino",
   "merced",
   "modesto",
   "monterey",
   "orangecounty",
   "palmsprings",
   "redding",
   "reno",
   "sacramento",
   "sandiego",
   "slo",
   "santabarbara",
   "santamaria",
   "sfbay",
   "siskiyou",
   "stockton",
   "susanville",
   "ventura",
   "visalia",
   "yubasutter"],
 "colorado"=>
  ["boulder",
   "cosprings",
   "denver",
   "eastco",
   "fortcollins",
   "rockies",
   "pueblo",
   "westslope"],
 "connecticut"=>["newlondon", "hartford", "newhaven", "nwct", "newyork"],
 "dc"=>["dc"],
 "delaware"=>["delaware"],
 "florida"=>
  ["daytona",
   "keys",
   "fortmyers",
   "gainesville",
   "cfl",
   "jacksonville",
   "lakeland",
   "lakecity",
   "ocala",
   "okaloosa",
   "orlando",
   "panamacity",
   "pensacola",
   "sarasota",
   "miami",
   "spacecoast",
   "staugustine",
   "tallahassee",
   "tampa",
   "treasure"],
 "georgia"=>
  ["albanyga",
   "athensga",
   "atlanta",
   "augusta",
   "brunswick",
   "columbusga",
   "macon",
   "nwga",
   "savannah",
   "statesboro",
   "valdosta"],
 "hawaii"=>["hawaii"],
 "idaho"=>["boise", "eastidaho", "lewiston", "pullman", "spokane", "twinfalls"],
 "illinois"=>
  ["bn",
   "chambana",
   "chicago",
   "decatur",
   "lasalle",
   "mattoon",
   "peoria",
   "quadcities",
   "rockford",
   "carbondale",
   "springfieldil",
   "stlouis",
   "quincy"],
 "indiana"=>
  ["bloomington",
   "evansville",
   "fortwayne",
   "indianapolis",
   "kokomo",
   "tippecanoe",
   "muncie",
   "richmondin",
   "southbend",
   "terrehaute",
   "chicago"],
 "iowa"=>
  ["ames",
   "cedarrapids",
   "desmoines",
   "dubuque",
   "fortdodge",
   "iowacity",
   "masoncity",
   "omaha",
   "quadcities",
   "siouxcity",
   "ottumwa",
   "waterloo"],
 "kansas"=>
  ["kansascity",
   "lawrence",
   "ksu",
   "nwks",
   "salina",
   "seks",
   "swks",
   "topeka",
   "wichita"],
 "kentucky"=>
  ["bgky",
   "cincinnati",
   "eastky",
   "huntington",
   "lexington",
   "louisville",
   "owensboro",
   "westky"],
 "louisiana"=>
  ["batonrouge",
   "cenla",
   "houma",
   "lafayette",
   "lakecharles",
   "monroe",
   "neworleans",
   "shreveport"],
 "maine"=>["maine"],
 "maryland"=>
  ["annapolis",
   "baltimore",
   "chambersburg",
   "easternshore",
   "frederick",
   "smd",
   "westmd",
   "washingtondc"],
 "massachusetts"=>["boston", "capecod", "southcoast", "westernmass", "worcester"],
 "michigan"=>
  ["annarbor",
   "battlecreek",
   "centralmich",
   "detroit",
   "flint",
   "grandrapids",
   "holland",
   "jxn",
   "kalamazoo",
   "lansing",
   "monroemi",
   "muskegon",
   "nmi",
   "porthuron",
   "saginaw",
   "southbend",
   "swmi",
   "thumb",
   "up"],
 "minnesota"=>
  ["bemidji",
   "brainerd",
   "duluth",
   "fargo",
   "mankato",
   "minneapolis",
   "rmn",
   "marshall",
   "stcloud"],
 "mississippi"=>
  ["gulfport", "hattiesburg", "jackson", "memphis", "meridian", "northmiss", "natchez"],
 "missouri"=>
  ["columbiamo",
   "joplin",
   "kansascity",
   "kirksville",
   "loz",
   "semo",
   "springfield",
   "stjoseph",
   "stlouis"],
 "montana"=>
  ["billings",
   "bozeman",
   "butte",
   "montana",
   "greatfalls",
   "helena",
   "kalispell",
   "missoula"],
 "north carolina"=>
  ["asheville",
   "boone",
   "charlotte",
   "eastnc",
   "fayetteville",
   "greensboro",
   "hickory",
   "onslow",
   "outerbanks",
   "raleigh",
   "wilmington",
   "winstonsalem"],
 "nebraska"=>
  ["grandisland", "lincoln", "northplatte", "omaha", "scottsbluff", "siouxcity"],
 "nevada"=>["elko", "lasvegas", "reno"],
 "new jersey"=>["cnj", "jerseyshore", "newjersey", "southjersey", "newyork"],
 "new mexico"=>
  ["albuquerque", "clovis", "farmington", "lascruces", "roswell", "santafe"],
 "new york"=>
  ["albany",
   "binghamton",
   "buffalo",
   "catskills",
   "chautauqua",
   "elmira",
   "fingerlakes",
   "glensfalls",
   "hudsonvalley",
   "ithaca",
   "longisland",
   "newyork",
   "oneonta",
   "plattsburgh",
   "potsdam",
   "rochester",
   "syracuse",
   "twintiers",
   "utica",
   "watertown"],
 "new hampshire"=>["n hampshire"],
 "north dakota"=>["bismarck", "fargo", "grandforks", "nd"],
 "ohio"=>
  ["akroncanton",
   "ashtabula",
   "athensohio",
   "chillicothe",
   "cincinnati",
   "cleveland",
   "columbus",
   "dayton",
   "huntington",
   "limaohio",
   "mansfield",
   "wheeling",
   "parkersburg",
   "sandusky",
   "toledo",
   "tuscarawas",
   "youngstown",
   "zanesville"],
 "oklahoma"=>
  ["fortsmith", "lawton", "enid", "oklahomacity", "stillwater", "texoma", "tulsa"],
 "oregon"=>
  ["bend",
   "corvallis",
   "eastoregon",
   "eugene",
   "klamath",
   "medford",
   "oregoncoast",
   "portland",
   "roseburg",
   "salem"],
 "pennsylvania"=>
  ["altoona",
   "chambersburg",
   "erie",
   "harrisburg",
   "lancaster",
   "allentown",
   "meadville",
   "philadelphia",
   "pittsburgh",
   "poconos",
   "reading",
   "scranton",
   "pennstate",
   "twintiers",
   "williamsport",
   "york"],
 "puerto rico"=>["puerto rico"],
 "rhode island"=>["rhode island"],
 "south carolina"=>
  ["charleston", "columbia", "florencesc", "greenville", "hiltonhead", "myrtlebeach"],
 "south dakota"=>["nesd", "csd", "rapidcity", "siouxfalls", "sd"],
 "tennessee"=>
  ["chattanooga",
   "clarksville",
   "cookeville",
   "jacksontn",
   "knoxville",
   "memphis",
   "nashville",
   "tricities"],
 "texas"=>
  ["abilene",
   "amarillo",
   "austin",
   "beaumont",
   "brownsville",
   "collegestation",
   "corpuschristi",
   "dallas",
   "nacogdoches",
   "delrio",
   "elpaso",
   "galveston",
   "houston",
   "killeen",
   "laredo",
   "lubbock",
   "mcallen",
   "odessa",
   "sanangelo",
   "sanantonio",
   "sanmarcos",
   "bigbend",
   "texarkana",
   "texoma",
   "easttexas",
   "victoriatx",
   "waco",
   "wichitafalls"],
 "utah"=>["logan", "ogden", "provo", "saltlakecity", "stgeorge"],
 "vermont"=>["vermont"],
 "virginia"=>
  ["charlottesville",
   "danville",
   "easternshore",
   "fredericksburg",
   "norfolk",
   "harrisonburg",
   "lynchburg",
   "blacksburg",
   "richmond",
   "roanoke",
   "swva",
   "winchester",
   "washingtondc"],
 "washington"=>
  ["bellingham",
   "kpr",
   "lewiston",
   "moseslake",
   "olympic",
   "pullman",
   "seattle",
   "skagit",
   "spokane",
   "wenatchee",
   "yakima",
   "portland"],
 "west virginia"=>
  ["charlestonwv",
   "martinsburg",
   "huntington",
   "morgantown",
   "wheeling",
   "parkersburg",
   "swv",
   "wv"],
 "wisconsin"=>
  ["appleton",
   "duluth",
   "eauclaire",
   "greenbay",
   "janesville",
   "racine",
   "lacrosse",
   "madison",
   "milwaukee",
   "northernwi",
   "sheboygan",
   "wausau"],
 "wyoming"=>["wyoming"]}

 @states = @markets.keys

 end

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
