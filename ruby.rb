#needs: 1.class for user choice objects
#       2.board function to make display
#       3.player move function that changes object display
#       4.player turn function that changes each turn
#       5.legal move checker so no space overiding 
#       6.win checker function that checks for 3 in a row
#       7.tie checker function that runs if 9 moves are made and no win

class GameTile
    attr_reader :tile 
    def initialize
        @tile = '_'
    end
    def tileChange(player)
        self.tile = player
    end
    protected
    attr_writer :tile
end

class GameBoard
    def initialize
        @board = []
    end
end

def CreateBoard
    

end
