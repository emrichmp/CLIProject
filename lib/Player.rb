#Class for Player instances

class Player
    attr_accessor :rank, :name
    @@all = []

    def initialize(rank=nil, name=nil)
        @name = name
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end

    def create_players(rank_array, name_array)
        rank_array.zip(name_array).each do |rank, name|
            player = Player.new(rank, name)
        end
        #  puts "#{@@all}"
    end
end

# p = Player.new
# rank_array = 1, 2, 3, 4
# name_array = "Emrich", "Michael", "Sarte", "Perrier"
# p.create_players(rank_array, name_array)


