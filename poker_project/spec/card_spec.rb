require 'rspec'
require 'card'

describe Card do

  describe "#initialize" do
    it "assigns card object a number and suit" do
      card = Card.new(:H, 2)
      expect(card.suit).to eq(:H)
      expect(card.value).to eq(2)
    end
  end

end
