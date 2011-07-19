require_relative 'roman'
require 'test/unit'

class RomanTest < MiniTest::Unit::TestCase
  NUMBERS = [[1, 'I'], [2, 'II'], [3, 'III'], [4, 'IV'], [5, 'V'], [6, 'VI'],[7, 'VII'], [8, 'VIII'], [9, 'IX'], [10, 'X']]

  def test_roman
    NUMBERS.each do |arabic, roman|
      assert_equal(roman, Roman.new(arabic).to_s)
    end
  end

  def test_range
    Roman.new(2)
    Roman.new(9)
    assert_raises(RuntimeError) {Roman.new(0)}
    assert_raises(RuntimeError) {Roman.new(5000)}
  end
end

