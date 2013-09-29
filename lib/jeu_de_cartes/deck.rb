class Deck
  attr_accessor :cards

  def initialize
    @cards = generate_cards
  end

  def shuffle!
    cards.shuffle!

    self
  end

  def cut!
    cards.rotate!(cards.length / 2)

    self
  end

  private
  def generate_cards
    cards = []

    Card::SUITS.product(Card::RANKS).each do |tuple|
      cards << Card.new(tuple[0], tuple[1])
    end

    cards
  end
end