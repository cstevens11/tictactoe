#needs: 1.class for user choice objects
#       2.board function to make display
#       3.player move function that changes object display
#       4.player turn function that changes each turn
#       5.legal move checker so no space overiding 
#       6.win checker function that checks for 3 in a row
#       7.tie checker function that runs if 9 moves are made and no win


#for changing the @board values when players take turns
#idk if I even need this class
# class GameTile
#     attr_reader :tile 
#     def initialize
#         @tile = '_'
#     end
#     def tileChange(player)
#         self.tile = player
#     end
#     protected
#     attr_writer :tile
# end

class GameBoard
    # attr_reader :board
    def initialize
        @board = [
            ['1', '2', '3'], 
            ['4', '5', '6'], 
            ['7', '8', '9']
        ]
    end

    def showBoard
        puts "-------------"
        @board.each do |row|
            print "| #{row[0]} | #{row[1]} | #{row[2]} |"
            puts "\n-------------"
        end
    end

    

end



def CreateBoard

end


currentGame = GameBoard.new
currentGame.showBoard

def notbrokenyet
    puts "havent broken it yet :)"
end

notbrokenyet 