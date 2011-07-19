require_relative 'count_word_frequency'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("      "))
  end

  def test_single_word
    assert_equal(["cat"], words_from_string("cat"))
    assert_equal(["cat"], words_from_string("  cat  "))
  end

  def test_multiple_words
    assert_equal(["cat", "sat", "on", "a", "mat"], words_from_string("cat sat on a mat"))
  end

  def test_ignores_punctuation
    assert_equal(["cat's", "on", "mat"], words_from_string("(cat's) on! <mat!>"))
  end
end
