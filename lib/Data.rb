require 'nokogiri'
require 'open-uri'

# Scrapes data from ATP website

class Scraper
    @name_array = []
    @rank_array = []

    URL = "https://www.atptour.com/en/rankings/singles"

    def scrape_and_assign()
        html = open(URL)
        data = Nokogiri::HTML(html)
        ranks = data.css(".rank-cell").text
        ranks = ranks.split
        name = data.css(".player-cell").text
        name = name.split
        @name_array = name
        while @name_array.length > 100
            @name_array.pop
        end
        @rank_array = ranks
        puts "#{@name_array}"
        puts "#{@rank_array}"
    end
end

s = Scraper.new
s.scrape_and_assign