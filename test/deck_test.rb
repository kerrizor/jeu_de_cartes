require 'test_helper'

class DeckTest < MiniTest::Unit::TestCase
  def setup
    @deck = Deck.new
  end

  def test_builds_a_deck
    refute_empty @deck.cards
  end
  def test_shuffle
    refute_equal @deck.cards.clone, @deck.shuffle
  end
end