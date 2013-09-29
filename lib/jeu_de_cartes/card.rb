class Card
  include Comparable

  attr_reader :rank, :suit

  SUIT_SYMBOL = { club:    '♣',
                  diamond: '♦',
                  heart:   '♥',
                  spade:   '♠' }
  SUITS = %w(club diamond heart spade)
  RANKS = [*2..10, "Jack", "Queen", "King", "Ace"]

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def value
    case @rank
    when 'Ace'
      14
    when 'King'
      13
    when 'Queen'
      12
    when 'Jack'
      11
    else
      @rank
    end
  end

  def <=> other
    value <=> other.value
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

  def to_notation
    "#{rank}#{@suit.downcase.split('').first}"
  end

  def to_symbol
    "#{@rank}#{SUIT_SYMBOL[@suit.downcase.chop.to_sym]}"
  end
end