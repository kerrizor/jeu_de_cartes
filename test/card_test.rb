# encoding: UTF-8

require 'test_helper'

class CardTest < MiniTest::Unit::TestCase
  def setup
    @ace_of_spades = JeuDeCartes::Card.new("Spades", "Ace")
    @two_of_hearts = JeuDeCartes::Card.new("Hearts", 2)
  end

  def test_can_calculate_value
    assert_equal 14, @ace_of_spades.value
  end

  def test_can_report_its_rank
    assert_equal 2, @two_of_hearts.rank
  end

  def test_can_report_its_suit
    assert_equal "Spades", @ace_of_spades.suit
  end

  def test_card_rank_comparison
    assert @ace_of_spades > @two_of_hearts
    refute @ace_of_spades < @two_of_hearts
  end

  def test_to_s_for_humans
    assert_equal "2 of Hearts", @two_of_hearts.to_s
  end

  def test_to_notation_for_poker_notation
    assert_equal "2h", @two_of_hearts.to_notation
  end

  def test_to_symbol_to_display_utf_8
    assert_equal "2♥", @two_of_hearts.to_symbol
  end

end