# will run the CLI
# create the array of instances of players
# output data that is asked for

class CommandLineInterface
    @allplayers = []
    def call
        puts "Welcome to the top 100 ATP Tennis Players!"
        playerdata = Scraper.new
        names = playerdata.names
        # puts "#{names}"
        ranks = playerdata.ranks
        # puts "#{ranks}"
        players = Player.new
        players.create_players(ranks, names)
        @allplayers = players.all
        #puts "#{@allplayers}"
    end

    def start
        puts ""
        puts "Do you want to see the details on a specific rank or the details of top 100?"
        puts "type 1 for specific rank or 0 for top 100"
        input = gets.strip.to_i
        if input == 1
            puts "what rank?"
            input2 = gets.strip.to_i
            puts "This is the player data for rank #{input2}"
            specific_player = @allplayers[input2]
            puts "#{specific_player.name} #{specific_player.rank}"
        else 
            puts "This is the player data for the top 100 players"
            #diplay top 10 data here w/ each iteration
            @allplayers.each do |player|
                
            end
        end
    end

    def run
        cycle = 1
        while cycle == 1
            self.start
            puts "Do you want to go again? 1 for yes, 0 for no."
            cycle = gets.strip.to_i
        end
        puts "Thank you for using this program! I hope you learned more about tennis!"
    end
end

# CLI = CommandLineInterface.new
# CLI.call
# #CLI.start
# CLI.run