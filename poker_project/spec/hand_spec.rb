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

  describe "#is_flush?" do
    it "returns true if it is a flush" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :H, :value => 3)}
      let(:card_three) {double("card_three", :suit => :H, :value => 6)}
      let(:card_four) {double("card_four", :suit => :H, :value => 7)}
      let(:card_five) {double("card_five", :suit => :H, :value => 9)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.is_flush?)to be_true
    end
  end

  describe "#is_straight?" do
    it "returns true if it is a straight" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :C, :value => 3)}
      let(:card_three) {double("card_three", :suit => :H, :value => 4)}
      let(:card_four) {double("card_four", :suit => :D, :value => 5)}
      let(:card_five) {double("card_five", :suit => :S, :value => 6)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.is_straight?)to be_true
    end
  end

  describe "#is_straightflush?" do
    it "returns true if it is a flush" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :H, :value => 3)}
      let(:card_three) {double("card_three", :suit => :H, :value => 4)}
      let(:card_four) {double("card_four", :suit => :H, :value => 5)}
      let(:card_five) {double("card_five", :suit => :H, :value => 6)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.is_straightflush?)to be_true
    end
  end

  describe "#handscore" do
    
    it "returns true if it is a flush" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :C, :value => 2)}
      let(:card_three) {double("card_three", :suit => :C, :value => 3)}
      let(:card_four) {double("card_four", :suit => :S, :value => 3)}
      let(:card_five) {double("card_five", :suit => :D, :value => 3)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore)to eq(7)
    end

    it "returns true if it is a flush" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :C, :value => 2)}
      let(:card_three) {double("card_three", :suit => :C, :value => 3)}
      let(:card_four) {double("card_four", :suit => :S, :value => 3)}
      let(:card_five) {double("card_five", :suit => :D, :value => 3)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore)to eq(7)
    end

    it "returns true if it is a flush" do
      let(:card_one) {double("card_one", :suit => :H, :value => 2)}
      let(:card_two) {double("card_two", :suit => :C, :value => 2)}
      let(:card_three) {double("card_three", :suit => :C, :value => 3)}
      let(:card_four) {double("card_four", :suit => :S, :value => 3)}
      let(:card_five) {double("card_five", :suit => :D, :value => 4)}
      hand.cards = [card_one, card_two, card_three, card_four, card_five]
      expect(hand.handscore)to eq(3)
    end

  end



end
