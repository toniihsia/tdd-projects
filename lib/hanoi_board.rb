class Board

  attr_accessor :towers

  def initialize(size = 3)
    @towers = Array.new(size) {[]}
    @towers[0] = [3, 2, 1]
  end

  def move(start_pos, end_pos)
    disc = @towers[start_pos].last
    raise "That tower is empty!" if @towers[start_pos].empty?
    raise "Invalid move!" if (@towers[end_pos].empty? == false &&
      disc > @towers[end_pos].last)
    @towers[end_pos] << @towers[start_pos].pop
    @towers
  end

  def won?
    return true if @towers.last == [3,2,1]
    false
  end
end
