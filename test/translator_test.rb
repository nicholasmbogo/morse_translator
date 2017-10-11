require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end
end
