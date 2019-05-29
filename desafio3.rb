class Roullette
    attr_accessor :play

    def initialize(play)
        @play = play
    end

    def play

    end

    def read
        file = File.open('rouletter_history.txt', 'r') 
        data = file.readlines
        file.close
    end
end