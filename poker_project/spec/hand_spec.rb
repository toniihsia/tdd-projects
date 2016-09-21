require 'rspec'
require 'hand'


describe Hand do
  let(:cards) {[:card, :card, :card, :card, :card]}
  subject(:hand) {Hand.new(cards)}
  describe "#initialize" do
    it "takes in an array of five cards" do
      hand.car
    end
  end

end
