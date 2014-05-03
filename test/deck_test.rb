require 'test_helper'

class DeckTest < MiniTest::Unit::TestCase
  def setup
    @deck = JeuDeCartes::Deck.new
  end

  def test_builds_a_deck
    refute_empty @deck.cards
  end

  def test_shuffle!
    refute_equal @deck.cards.clone, @deck.shuffle!
  end

  def test_cut_splits_a_deck_in_half
    refute_same @deck.cards.first, @deck.cut!.cards.first
  end

  def test_deal_without_options_returns_one_card
    hand = @deck.deal!

    assert_instance_of Array, hand
    assert_instance_of JeuDeCartes::Card, hand.first
  end

  def test_deal_accepts_number_of_cards_to_return_param
    hand = @deck.deal!(5)

    assert_instance_of Array, hand

    hand.each do |card|
      assert_instance_of JeuDeCartes::Card, card
    end
  end

  def test_deal_removes_one_card
    @deck.deal!
    assert_equal 51, @deck.card_count
  end
end