# Scrapes data from ATP website

class Scraper
    @@name_array = []
    @@rank_array = []

    URL = "https://www.atptour.com/en/rankings/singles"

    def scrape_and_assign()
        html = URI.open(URL)
        data = Nokogiri::HTML(html)
        ranks = data.css(".rank-cell").text
        ranks = ranks.split
        name = data.css(".player-cell").text
        name = name.split
        @@name_array = name
        while @@name_array.length > 100
            @@name_array.pop
        end
        @@rank_array = ranks
    end

    def names
        @@name_array
    end

    def ranks
        @@rank_array
    end

end