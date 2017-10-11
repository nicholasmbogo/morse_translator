require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_can_translate_a_single_letter
    translator = Translator.new

    assert_equal translator.eng_to_morse("h"), "...."
  end

  def test_can_translate_two_letters
    translator = Translator.new

    assert_equal translator.eng_to_morse("he"), "....."
  end

  def test_can_translate_a_string_of_words
    translator = Translator.new

    assert_equal translator.eng_to_morse("hello world"), "......-...-..--- .-----.-..-..-.."
  end

  def test_can_translate_case_incensitive_characters
    translator = Translator.new

    assert_equal translator.eng_to_morse("Hello World"), "......-...-..--- .-----.-..-..-.."
  end

  def test_can_translate_a_text_with_numbers
    translator = Translator.new

    assert_equal translator.eng_to_morse("There are 3 ships"),  "-......-.. .-.-.. ...-- ..........--...."
  end

  def test_can_read_and_translate_from_a_file
    translator = Translator.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("./lib/input.txt")
  end
end
