class TicTacToe
  
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
  
  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end 
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts "-----------"
  end
  
  def input_to_index(input)
    index = input.to_i-1
  end 
  
  def move(index,token = "X")
    @board[index] = token
  end 
  
  def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
      return true 
    end
    false 
  end
  
  def valid_move?(index)
    if index.between?(0,8) && position_taken?(index) == false
      return true
    end
    false 
  end 
  
  def turn_count
    @board.count("X") + @board.count("O")
  end 

  def current_player
    if turn_count.odd?
      return "O"
    else
      "X"
    end 
  end   
  
  def turn
    puts "Please enter 1-9"
    input = gets.strip
    input_to_index
    if valid_move?
      @board[index]
    else
      turn 
    end 
    
  end 
  
  
end