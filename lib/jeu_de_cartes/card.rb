class Card
  include Comparable

  attr_reader :rank, :suit

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
end