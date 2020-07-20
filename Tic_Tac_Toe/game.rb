class Game
  attr_accessor :players
  attr_reader :board
  attr_reader :winning_conditions
     
  def initialize(player1, player2)
    @players = [player1, player2]
    @board = (1..9).to_a
    @winning_conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
  end

  private

  def won?(player)
    @winning_conditions.each do |i|
      win = [board[i[0]], board[i[1]], board[i[2]]]
      return true if win.all? { |s| s == player.sign }
    end
    false
  end

  def valid_move?(n)
    if @board.include?(n) && @board[n - 1] != 'O' && @board[n - 1] != 'X'
      return true
    else
      false
    end  
  end

  def move(player)
    loop do
      puts "\n#{player.name} select where you want to put your sign (#{player.sign}):"
      selection = gets.chomp.to_i
      if valid_move?(selection) 
        @board[selection - 1] = player.sign
        return
      else
        puts("\nWrong selection. Try again. \n")
      end
    end
  end
    
  public

  def print_board
    "
    #{@board[0]} | #{@board[1]} | #{@board[2]}
    ----------
    #{@board[3]} | #{@board[4]} | #{@board[5]}
    ----------
    #{@board[6]} | #{@board[7]} | #{@board[8]}
    "
  end

  def play
    has_won = false
    turn = 1
    winner = nil
    until has_won || turn == 10
      puts print_board
      if turn.odd?
        move(@players[0])
        has_won = won?(@players[0])
        winner = @players[0] if has_won
      else
        move(@players[1])
        has_won = won?(@players[1])
        winner = @players[1] if has_won
      end
      turn += 1
    end
    puts print_board
    has_won ?
      puts("#{winner.name} has won the game. Congratulations! ") :
      puts('The game ended in a draw!')
  end

  def to_s
    "Players: #{@players}"
  end
end
