require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) {Deck.new}

  describe "#initialize" do

    it "creates a deck of 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#deal" do
    it "deals a card to a player" do
      expect(deck.cards.last).to eq(deck.deal)
    end

    it "decreases the deck size" do
      deck.deal
      expect(deck.cards.length).to eq(51)
    end
  end

  describe "#shuffle!" do
    it "shuffles the cards" do
      before_shuffled = deck.cards.dup
      deck.shuffle!
      expect(before_shuffled).not_to eq(deck.cards)
    end
  end
end
