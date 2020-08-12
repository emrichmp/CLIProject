# will run the CLI
# create the array of instances of players
# output data that is asked for

class CommandLineInterface
    def call
        puts "Welcome to the top 100 ATP Tennis Players!"
        playerdata = Scraper.new
        names = playerdata.names
        # puts "#{names}"
        ranks = playerdata.ranks
        # puts "#{ranks}"
    end

    def start
        puts ""
        puts "Do you want to see the details on a specific rank or the details of top 10?"
        puts "type 1 for specific rank or 0 for top 10"
        input = gets.strip.to_i
        if input == 1
            puts "what rank?"
            input2 = gets.strip.to_i
            puts "This is the player data for rank #{input2}"
            #display rank here
        else 
            puts "This is the player data for the top 10 players"
            #diplay top 10 data here w/ each iteration
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