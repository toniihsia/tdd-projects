require 'rspec'
require 'hanoi_board'
require 'hanoi_player'
require 'hanoi_game'

describe Game do
    let(:board) { double("board", :won? => false, :towers => [[3, 2, 1], [], []]) }
    let(:player) { double("player") }
    subject(:game) { Game.new(board, player)}

    describe "#initialize" do
      it "creates a game with a board and player" do
        expect(game.player).to eq(player)
        expect(game.board).to eq(board)
      end
    end

    # describe "#play" do
    #   it "takes turn until the game is won" do
    #     expect(game).to receive(:take_turn)
    #     game.play
    #   end
    # end
end

describe Board do
  subject(:board) { Board.new }

  describe "#initialize" do
    it "creates a default Hanoi Board" do
      expect(board.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#move" do
    it "moves a disc from one tower to another" do
      expect(board.move(0, 2)).to eq([[3, 2], [], [1]])
    end

    it "raises an error if player attempts to put big disc on small disc" do
      board.move(0, 2)
      expect{ board.move(0, 2) }.to raise_error("Invalid move!")
    end

    it "raises an error if player attemps to select from empty tower" do
      expect {board.move(1, 0)}.to raise_error("That tower is empty!")
    end
  end

  describe "#won?" do
    it "returns true if board is complete" do
      board.towers = [[], [], [3, 2, 1]]
      expect(board.won?).to be true
    end

    it "returns false if board is incomplete" do
      expect(board.won?).to be false
    end
  end

  describe "#render" do
    it "renders the towers" do
      expect(board.render).to be(board.towers)
    end
  end


end

describe Player do
  subject(:player) { Player.new("Brad Pitt") }

  describe "#initialize" do
    it "sets player's name" do
      expect(player.name).to eq("Brad Pitt")
    end
  end
end
