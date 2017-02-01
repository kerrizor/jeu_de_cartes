module JeuDeCartes
  class Hand::HoldEm
    attr_reader :card1, :card2

    def initialize(card1 = nil, card2 = nil)
      [card1, card2].each do |card|
        unless card.is_a? JeuDeCartes::Card
          raise "Must supply new() with 2 JeuDeCartes::Card objects"
        end
      end

      @card1 = card1
      @card2 = card2
    end
  end
end
