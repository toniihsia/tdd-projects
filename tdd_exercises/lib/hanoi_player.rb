class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_guess
    gets.chomp.split(",").map{|el| Integer(el)}
  end
end
