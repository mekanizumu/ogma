# encoding: utf-8

require 'test/unit'
require 'ogma'

class OgmaTest < Test::Unit::TestCase
  def test_single_lower_letter_transliteration
    assert_equal Ogma.transliterate("а"), "a"
    assert_equal Ogma.transliterate("н"), "n"
    assert_equal Ogma.transliterate("щ"), "sch"
  end

  def test_multi_lower_letter_transliteration
    assert_equal Ogma.transliterate("пьеза"), "pieza"
    assert_equal Ogma.transliterate("тряпьё"), "tryapie"
  end

  def test_single_upper_letter_transliteration
    assert_equal Ogma.transliterate("Щ"), "SCH"
    assert_equal Ogma.transliterate("Ґ"), "G"
    assert_equal Ogma.transliterate("А"), "A"
  end

  def test_multi_upper_letter_transliteration
    assert_equal Ogma.transliterate("ПЬЕЗА"), "PIEZA"
    assert_equal Ogma.transliterate("ТРЯПЬЁ"), "TRYAPIE"
  end
end