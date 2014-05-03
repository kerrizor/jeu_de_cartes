require 'test_helper'

class HandTest < MiniTest::Unit::TestCase
  def setup
    @empty_hand = JeuDeCartes::Hand.new

    @ace_of_spades = JeuDeCartes::Card.new("Spades", "Ace")
    @one_card_hand = JeuDeCartes::Hand.new([@ace_of_spades])
  end

  def test_builds_an_empty_hand_when_given_no_cards
    assert_empty @empty_hand.cards
  end

  def test_builds_a_hand_with_cards_when_provided
    refute_empty @one_card_hand.cards
    assert_instance_of JeuDeCartes::Card, @one_card_hand.cards.first
    assert_equal @one_card_hand.cards.length, 1
  end
end