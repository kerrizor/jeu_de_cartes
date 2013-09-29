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
    cards.rotate!(card_count / 2)

    self
  end

  def deal!
    cards.shift
  end

  def card_count
    cards.length
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