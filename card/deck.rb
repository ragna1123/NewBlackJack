class Deck
  def initialize
    @suit = ['spade','heart','diamond','club'].freeze
    @number = (2..10).to_a + ['A', 'J', 'Q', 'K'].freeze
    @deck = []
    card_generate
  end

  def card_generate
    @suit.each do |suit|
      @number.each do |num|
        @deck << [suit, num]
      end
    end
  end
end

Deck.new