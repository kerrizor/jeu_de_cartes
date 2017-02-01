require 'test_helper'

class CardTest < MiniTest::Test

  def setup
    @ace_of_spades = JeuDeCartes::Card.new("Spades", "Ace")
    @two_of_hearts = JeuDeCartes::Card.new("Hearts", 2)
    @hand = JeuDeCartes::Hand::HoldEm.new(@ace_of_spades,@two_of_hearts)
  end

  def test_builds_a_hand_with_2_card_objects
    assert_instance_of JeuDeCartes::Card, @hand.card1
    assert_instance_of JeuDeCartes::Card, @hand.card2
  end

end
