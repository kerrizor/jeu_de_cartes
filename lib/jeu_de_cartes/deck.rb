module JeuDeCartes
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
      cards.rotate!(random_location_in_deck(card_count))

      self
    end

    def deal!(number_to_deal = 1)
      hand = []

      number_to_deal.times do
        hand << cards.shift
      end

      hand
    end

    def card_count
      cards.length
    end

    private

    def random_location_in_deck(card_count)
      dist = Rubystats::NormalDistribution.new(card_count, 5).rng.to_i

      dist -= 1 if dist == 52
      dist
    end

    def generate_cards
      cards = []

      Card::SUITS.product(Card::RANKS).each do |tuple|
        cards << Card.new(tuple[0], tuple[1])
      end

      cards
    end
  end
end