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
    attr_accessor :board, :turnNumber, :winner, :currentInput
 
    def initialize
        @board = [
            ['1', '2', '3'], 
            ['4', '5', '6'], 
            ['7', '8', '9']
        ]
        @turnNumber = 0 
        @winner = false
        @currentInput = []   
    end

    def showBoard
        puts "-------------"
        @board.each do |row|
            print "| #{row[0]} | #{row[1]} | #{row[2]} |"
            puts "\n-------------"
        end
    end

    def countTurn
        @turnNumber += 1
    end

    

    def markBoard(symbol, target)
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

    def validateInput(input)
        if input.length != 2
            puts "wrong input, Be sure to put x/o followed \nby the space you want to go! Ex: x5 or o3"
            getInput()
        else 
            @currentInput = input
        end
    end

    def getInput
        puts "Please input your move!"
        input = gets.chomp.split("")
        p input
        validateInput(input)
        p "the currentInput instance is #{currentInput}"
    end

    def horizontalCheck
        # if @board.each do |row|
        #     row.all?
        if  (@board[0][0] == @board[0][1] && @board[0][1] == @board[0][2]) ||
            (@board[1][0] == @board[1][1] && @board[1][1] == @board[1][2]) ||
            (@board[2][0] == @board[2][1] && @board[2][1] == @board[2][2])
            return true
        else 
            return false
        end

    end
    def verticalCheck
        if  (@board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]) ||
            (@board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]) ||
            (@board[0][2] == @board[1][2] && @board[1][2] == @board[2][2])
            return true
        else 
            return false
        end
    end
    def diagonalCheck
        if  (@board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]) ||
            (@board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]) 
            return true
        else 
            return false
        end
    end



    def checkWinner
        if (horizontalCheck() || verticalCheck() || diagonalCheck())
            return (winner = true)
        end
    end

    def playGame
        puts "     Tic Tac Toe! \nType either x/o followed by the space # you want to use! (Ex: x4)"
        showBoard()
        getInput()

    end

    #next is playGame function that takes (.gets) user input up to 9 times while checking for 
    #a winner(separate function), if no winner by the end of turn 9 then return tie game and do a pretty rematch/restart message

end



def newBoard

end


currentGame = GameBoard.new
# currentGame.showBoard

def notbrokenyet
    puts "havent broken it yet :)"
end

notbrokenyet()

currentGame.playGame()

# currentGame.getInput
