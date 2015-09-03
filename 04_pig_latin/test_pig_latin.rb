require './test_helper' 
# All test files are invoked by rake. So the . here refers to the path where rake file 
# is located at.
# Rake file is located at relative path: learn_ruby. So ./test_helper looks up at
# learn_ruby/test_helper.rb.
# . still mean 'current working directory'. There's nothing wrong.
# I need to understand who is going to check the relative path in order to understand.
# Put it in other words, relative path needs to know what is the subject i.e. 谁是主语

require 'pig_latin'
# Pig Latin time!
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

class TestPigLatin < MiniTest::Test
  # translate
  def test_translate_word_starting_with_vowel
    s = translate("apple")
    assert_equal "appleay", s
  end

  def test_translate_word_starting_with_consonant
    s = translate("banana")
    assert_equal "ananabay", s
  end

  def test_translate_word_starting_with_two_consonants
    s = translate("cherry")
    assert_equal "errychay", s
  end

  def test_translates_two_words
    s = translate("eat pie")
    assert_equal "eatay iepay", s
  end

  def test_translates_word_starting_with_three_consonants
    assert_equal "eethray", translate("three")
  end

  def test_translates_sch_as_phoneme
    s = translate("school")
    assert_equal "oolschay", s
  end

  def test_translates_qu_as_phoneme
    s = translate("quiet")
    assert_equal "ietquay", s
  end

  def test_translates_qu_as_consonant_when_preceded_by_consonant
    s = translate("square")
    assert_equal "aresquay", s
  end

  def test_translates_many_words
    s = translate("the quick brown fox")
    assert_equal "ethay ickquay ownbray oxfay", s
  end

  # Extra challenges:
  # Write tests and get them to pass for:
  # * capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * the punctuation of the original phrase is retained
end
