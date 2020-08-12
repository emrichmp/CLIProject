#Class for Player instances

class Player
    attr_accessor :rank, :name
    @@all = []
    def initialize(rank, name)
        @name = name
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end

    def create_player(rank_array, name_array)

    end
end


