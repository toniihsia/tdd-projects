class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def handscore
    return 10 if royal_flush?
    return 9 if straight_flush?
    return 8 if four_of_kind?
    return 7 if full_house?
    return 6 if flush?
    return 5 if straight?
    return 4 if three_of_kind?
    return 3 if two_pair?
    return 2 if pair?
    1
  end

  private

  def royal_flush?
  end

  def flush?
    suit_count = Hash.new(0)
    @cards.each { |card| suit_count[card.suit] += 1 }
    suit_count.values.any? { |val| val == 4 }
  end

  def four_of_kind?

  end

  def straight?
    card_vals = []
    @cards.each { |card| cards_vals << card.value }

    card_vals.sort!
    checker = true
    return true if card_vals == [2, 3, 4, 5, 14]
    card_vals.each_with_index do |val, i|
      until i == 3
        checker = false if card_vals[i + 1] != val + 1
      end
    end

    checker
  end
end
