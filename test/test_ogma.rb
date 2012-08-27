# encoding: utf-8

require 'test/unit'
require 'ogma'

class OgmaTest < Test::Unit::TestCase
  def test_single_lower_letter_transliteration
    assert_equal Ogma.transliterate("щ"), "sch"
    assert_equal Ogma.transliterate("ґ"), "g"
    assert_equal Ogma.transliterate("а"), "a"
  end

  def test_multi_lower_letter_transliteration
    assert_equal Ogma.transliterate("ье"), "ie"
    assert_equal Ogma.transliterate("ьё"), "ie"
  end

  def test_single_upper_letter_transliteration
    assert_equal Ogma.transliterate("Щ"), "SCH"
    assert_equal Ogma.transliterate("Ґ"), "G"
    assert_equal Ogma.transliterate("А"), "A"
  end

  def test_multi_upper_letter_transliteration
    assert_equal Ogma.transliterate("ЬЕ"), "IE"
    assert_equal Ogma.transliterate("ЬЁ"), "IE"
  end
end