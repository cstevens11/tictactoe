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
    attr_accessor :board, :turnNumber, :winner
 
    def initialize
        @board = [
            ['1', '2', '3'], 
            ['4', '5', '6'], 
            ['7', '8', '9']
        ]
        @turnNumber = 0 
        @winner = false    
    end

    def showBoard
        puts "-------------"
        @board.each do |row|
            print "| #{row[0]} | #{row[1]} | #{row[2]} |"
            puts "\n-------------"
        end
    end





    def playerTurn(symbol, target)
        @board.each do |row|
            row.each_with_index do |cell, index|
                if (cell == target)
                    row[index] = symbol
                else 
                    puts "Invalid input please try again. 
                    Be sure to put x/o followed by the space you want to go! Ex: x5 or o3"
                end
            end
        end
    end


    def horizontalCheck
        # if @board.each do |row|
        #     row.all?
        if  (@board[0][0] == @board[0][1] && @board[0][1] == @board[0][2]) ||
            (@board[1][0] == @board[1][1] && @board[1][1] == @board[1][2]) ||
            (@board[2][0] == @board[2][1] && @board[2][1] == @board[2][2])
            return true
        else false

    end
    def verticalCheck
        if  (@board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]) ||
            (@board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]) ||
            (@board[0][2] == @board[1][2] && @board[1][2] == @board[2][2])
            return true
        else false
    end
    def diagonalCheck
        if  (@board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]) ||
            (@board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]) 
            return true
        else false
    end



    def checkWinner
        if (horizontalCheck() || verticalCheck() || diagonalCheck())
            return (winner = true)
    end

    #next is playGame function that takes (.gets) user input up to 9 times while checking for 
    #a winner(separate function), if no winner by the end of turn 9 then return tie game and do a pretty rematch/restart message

end



def CreateBoard

end


currentGame = GameBoard.new
currentGame.showBoard

def notbrokenyet
    puts "havent broken it yet :)"
end

notbrokenyet 