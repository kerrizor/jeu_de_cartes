require './lib/jeu_de_cartes'
require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'

class MiniTest::Unit::TestCase
  def assert_change(block)
    before = block.call

    yield

    refute_equal before, block.call
  end

  def refute_change(block)
    before = block.call

    yield

    assert_equal before, block.call
  end
end