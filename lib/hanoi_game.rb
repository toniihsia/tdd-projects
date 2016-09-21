require_relative 'hanoi_board'
require_relative 'hanoi_player'

class Game

  attr_reader :player, :board

  def initialize(board = Board.new, player = Player.new("Brad Pitt"))
    @board, @player = board, player
  end

  def play
    puts "Game is starting!"

    until @board.won?
      take_turn
    end

    puts "You won the game!"
  end

  def take_turn
    puts "Play your turn, #{@player.name}"
    @board.render
    begin
      guess = @player.get_guess
      x, y = guess
      @board.move(x, y)
    rescue ArgumentError => e
      puts "Something is wrong :( "
      puts "ERROR: #{e.message}"
      puts "Try again!"
      retry
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  game = Game.new
  game.play
end
