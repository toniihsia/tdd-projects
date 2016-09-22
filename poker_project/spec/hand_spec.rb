require 'rspec'
require 'hand'


describe Hand do
  let(:cards) {[:card, :card, :card, :card, :card]}
  subject(:hand) {Hand.new(cards)}
  describe "#initialize" do
    it "takes in an array of five cards" do
      expect(hand.cards.length).to eq(5)
    end
  end

  describe "handscore" do
    it "returns royal flush value as 10" do
      let(:card_one) {double("card_one", :suit => :H, :value => 14)}
      let(:card_two) {double("card_two", :suit => :H, :value => 13)}
      let(:card_three) {double("card_three", :suit => :H, :value => 12)}
      let(:card_four) {double("card_four", :suit => :H, :value => 11)}
      let(:card_five) {double("card_five", :suit => :H, :value => 10)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore).to eq(10)
    end

    it "returns straight flush value as 9" do
      let(:card_one) {double("card_one", :suit => :H, :value => 10)}
      let(:card_two) {double("card_two", :suit => :H, :value => 9)}
      let(:card_three) {double("card_three", :suit => :H, :value => 8)}
      let(:card_four) {double("card_four", :suit => :H, :value => 7)}
      let(:card_five) {double("card_five", :suit => :H, :value => 6)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore).to eq(9)
    end

    it "returns four of a kind value as 8" do
      let(:card_one) {double("card_one", :suit => :S, :value => 3)}
      let(:card_two) {double("card_two", :suit => :H, :value => 3)}
      let(:card_three) {double("card_three", :suit => :D, :value => 3)}
      let(:card_four) {double("card_four", :suit => :C, :value => 3)}
      let(:card_five) {double("card_five", :suit => :H, :value => 10)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore).to eq(8)
    end

    it "returns full house value as 7" do
      let(:card_one) {double("card_one", :suit => :H, :value => 10)}
      let(:card_two) {double("card_two", :suit => :S, :value => 10)}
      let(:card_three) {double("card_three", :suit => :D, :value => 10)}
      let(:card_four) {double("card_four", :suit => :S, :value => 9)}
      let(:card_five) {double("card_five", :suit => :H, :value => 9)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore).to eq(7)
    end

    it "returns two pairs as 3" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :S, :value => 2)}
      let(:card_three) {double("card_three", :suit => :D, :value => 3)}
      let(:card_four) {double("card_four", :suit => :S, :value => 3)}
      let(:card_five) {double("card_five", :suit => :H, :value => 9)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore).to eq(3)
    end
  end
end
