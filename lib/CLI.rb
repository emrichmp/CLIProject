# will run the CLI
# create the array of instances of players
# output data that is asked for

class CommandLineInterface
    @allplayers = []
    def call
        puts "Welcome to the top 100 ATP Tennis Players!"
        playerdata = Scraper.new
        playerdata.scrape_and_assign
        names = playerdata.names
        ranks = playerdata.ranks
        players = Player.new
        players.create_players(ranks, names)
        @allplayers = players.all
        @allplayers.shift()
    end

    def start
        puts ""
        puts "Do you want to see the details on a specific rank or the details of top 100?"
        puts "type 1 for specific rank or 0 for top 100"
        input = gets.strip.to_i
        if input == 1
            puts "what rank?"
            input2 = gets.strip.to_i
            if input2 > 100 || input2 < 1
                puts "Please try again and enter a valid input"
                self.start
            else
                puts "This is the player data for rank #{input2}"
                specific_player = @allplayers[input2-1]
                puts "Name: #{specific_player.name}, ATP ranking: #{specific_player.rank}"
            end
        elsif input == 0
            puts "This is the player data for the top 100 players"
            @allplayers.each do |player|
                puts "name: #{player.name}, ATP ranking: #{player.rank}"
            end
        else
            puts "Please try again and enter a valid input"
            self.start
        end
    end

    def run
        cycle = 1
        while cycle == 1
            self.start
            puts "Do you want to go again? 1 for yes, any key to exit"
            cycle = gets.strip.to_i
        end
        puts "Thank you for using this program! I hope you learned more about the top male tennis players!"
    end
end