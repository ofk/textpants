# coding: utf-8
require 'test_helper'

class TextpantsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Textpants::VERSION
  end

  def test_sanitize
    assert_equal '', Textpants.sanitize('')
    assert_equal 'abc', Textpants.sanitize("a\u0000b\u007Fc")
    assert_equal "  a\nA\nあ\n亞　！", Textpants.sanitize("  a\nA\rあ\r\n亞　！")
  end

  def test_normalize
    assert_equal '', Textpants.normalize('')
    assert_equal "  a\nA\nあ\n亞 !", Textpants.normalize("  a\nA\rあ\r\n亞　！")
  end

  def test_squish
    assert_equal 'a A あ 亞 !', Textpants.squish(" \u0000 a \n A \r あ \r\n 亞　！\uFFFB")
  end
end
