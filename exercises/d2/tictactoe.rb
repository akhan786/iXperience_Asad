# Every turn:
#   Update whose turn it is
#   Get user input
#   Update board
#   Check for winner
turn = 1
numbers = [0,1,2,3,4,5,6,7,8]
poss_numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8]
board1 = []
board2 = []
gamewinner = false


	
class Game
	def initialize
		@a = " "
		@b = " "
		@c = " "
		@d = " "
		@e = " "
		@f = " "
		@g = " "
		@h = " "
		@i = " "
	end
	def add(turn, square)
		if turn == 1
			if square == 0
				@a = "X"
			elsif square ==	1
				@b = "X"
			elsif square ==	2
				@c = "X"
			elsif square ==	3
				@d = "X"
			elsif square ==	4
				@e = "X"
			elsif square ==	5
				@f = "X"
			elsif square ==	6
				@g = "X"
			elsif square ==	7
				@h = "X"
			elsif square ==	8
				@i = "X"
			end	
		elsif turn ==2 
			if square == 0
				@a = "O"
			elsif square ==	1
				@b = "O"
			elsif square ==	2
				@c = "O"
			elsif square ==	3
				@d = "O"
			elsif square ==	4
				@e = "O"
			elsif square ==	5
				@f = "O"
			elsif square ==	6
				@g = "O"
			elsif square ==	7
				@h = "O"
			elsif square ==	8
				@i = "O"
			end	
		end
	end
	def refresh
		puts " #{@a} | #{@b} | #{@c}  \n___ ___ ___\n #{@d} | #{@e} | #{@f}  \n___ ___ ___\n #{@g} | #{@h} | #{@i} "	
	end 
end						








game = Game.new

def gamewon(turn, board)
	
	
	if turn == 1
		board.sort
		if(board.length >= 3)
			i = 0
			j = 0
			k = 0
			l = 0
			while i < board.length - 1
				if (board[i] + 1 == board[i+1] && board[i+1] + 1 == board[i+2])
					puts "Congrats, player 1 won!"
					return true
				else
					i = i + 1
				end	

			end	
			while j < board.length - 1
				if(board.include?(board[j]+3) && board.include?(board[j]+6))
					puts "Congrats, player 1 won!"
					return true
				else
					j = j + 1
				end		
			end
			while k < board.length - 1
				if(board.include?(board[k]+4) && board.include?(board[k]+8) && board[k] == 0)
					puts "Congrats, player 1 won!"
					return true
				else
					k = k + 1
				end		
			end	
			while l < board.length - 1
				if(board.include?(board[l]+2) && board.include?(board[l]+4) && board[l] == 2)
					puts "Congrats, player 1 won!"
					return true
				else
					l = l + 1
				end		
			end	
		end
	elsif turn == 2
		board.sort
		if(board.length >= 3)
			i = 0
			j = 0
			k = 0
			l = 0
			while i < board.length - 1
				if (board[i] + 1 == board[i+1] && board[i+1] + 1 == board[i+2])
					puts "Congrats, player 2 won!"
					return true
				else
					i = i + 1
				end	

			end	
			while j < board.length - 1
				if(board.include?(board[j]+3) && board.include?(board[j]+6))
					puts "Congrats, player 2 won!"
					return true
				else
					j = j + 1
				end		
			end
			while k < board.length - 1
				if(board.include?(board[k]+4) && board.include?(board[k]+8) && board[k] == 0)
					puts "Congrats, player 1 won!"
					return true
				else
					k = k + 1
				end		
			end	
			while l < board.length - 1
				if(board.include?(board[l]+2) && board.include?(board[l]+4) && board[l] == 2)
					puts "Congrats, player 1 won!"
					return true

				else
					l = l + 1
				end		
			end	
		end
	end
end	
	

while(!gamewinner)

if turn == 1
	puts "Player 1:"
	square = gets.to_i
	if poss_numbers.include?(square)
		poss_numbers.delete(square)
		board1 << square
		game.add(turn, square)
		game.refresh
		if gamewon(turn, board1)
			gamewinner = true
		end	

		turn = 2
	elsif numbers.include?(square)
		puts "Error: Square Already Taken"
		
	else
		puts "Error: Invalid input"
		turn = 1
	end
elsif turn == 2
	puts "Player 2:"
	square = gets.to_i
	if poss_numbers.include?(square)
		poss_numbers.delete(square)
		board2 << square
		game.add(turn, square)
		game.refresh
		if gamewon(turn, board2)
			gamewinner = true
		end	
		turn = 1
	elsif numbers.include?(square)
		puts "Error: Square Already Taken"
	else
		puts "Error: Invalid input"
		turn = 2
	end
end	
end
			


			

