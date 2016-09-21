require 'set'
require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = Deck.populate
  end

  def self.populate
    deck = []
    [:S, :H, :C, :D].each do |suit|
      (2..14).each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal
    @cards.pop
  end

end
