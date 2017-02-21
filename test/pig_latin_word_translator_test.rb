require './test/test_helper'
require './lib/pig_latin_word_translator'

class PigLatinWordTranslatorTest < Minitest::Test
  def test_translates_words_starting_with_consonants
    subject = PigLatinWordTranslator.new('pig')

    result = subject.translate

    assert_equal 'igpay', result
  end

  def test_translates_words_starting_with_consonant_cluster
    subject_1 = PigLatinWordTranslator.new('cheers')
    subject_2 = PigLatinWordTranslator.new('smile')

    result_1 = subject_1.translate
    result_2 = subject_2.translate

    assert_equal 'eerschay', result_1
    assert_equal 'ilesmay', result_2
  end

  def test_translates_words_starting_and_ending_with_same_consonant_cluster
    subject = PigLatinWordTranslator.new('sheesh')

    result = subject.translate

    assert_equal 'eeshay', result
  end

  def test_translates_words_starting_with_vowel
    subject = PigLatinWordTranslator.new('arrow')

    result = subject.translate

    assert_equal 'arrowway', result
  end
end
