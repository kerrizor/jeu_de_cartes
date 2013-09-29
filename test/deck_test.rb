require 'test_helper'

class DeckTest < MiniTest::Unit::TestCase
  def setup
    @deck = Deck.new
  end

  def test_builds_a_deck
    refute_empty @deck.cards
  end

  def test_shuffle!
    refute_equal @deck.cards.clone, @deck.shuffle!
  end

  def test_cut_splits_a_deck_in_half
    assert_same @deck.cards.first, @deck.cut!.cards[@deck.card_count/2]
  end

  def test_deal_returns_one_card
    card = @deck.deal!

    assert_instance_of Card, card
  end

  def test_deal_removes_one_card
    @deck.deal!
    assert_equal 51, @deck.card_count
  end
end