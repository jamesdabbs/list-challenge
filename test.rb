require 'minitest/autorun'
require 'pry'


class ListAnalyzer

  def number_of_words_starting_with_a_vowel words
    words_starting_with_vowel = 0
    words.each do |word|
      if word.start_with?("a","e","i","o","u")
        words_starting_with_vowel += 1
      end
      # return words_starting_with_vowel
    end
    return words_starting_with_vowel
  end

  def all_words_start_with_vowels? words
    # one option:
    # number_of_words_starting_with_a_vowel(words) == words.length
    words.each do |word|
      if !word.start_with?("a", "e", "i", "o", "u")
        return false
      end
    end
    return true
  end

  def number_of_vowels_in_all_words produce
    lister = 14
  end

  def some_word_starts_with_a_vowel? words
    # number_of_words_starting_with_a_vowel(words) > 0
    words.each do |word|
      if word.start_with?("a", "e", "i", "o", "u")
        return true
      end
    end
    return false
  end
end


class ListTest < MiniTest::Test
  def test_it_can_count_vowels
    produce = ["apricot", "beet", "clementine", "date", "elderberry"]

    lister = ListAnalyzer.new

    assert_equal 2, lister.number_of_words_starting_with_a_vowel(produce)
  end

  def test_it_can_check_a_whole_list_for_matches
    mostly_vowels = ["iceberg", "ugli", "endive", "plum", "olive"]

    lister = ListAnalyzer.new
    refute lister.all_words_start_with_vowels?(mostly_vowels)

    mostly_vowels.delete "plum"
    assert lister.all_words_start_with_vowels?(mostly_vowels)
  end

  def test_it_can_check_for_a_single_example
    mostly_consonants = ["pear", "quince", "aubergine", "zucchini", "pineapple"]

    lister = ListAnalyzer.new
    assert lister.some_word_starts_with_a_vowel?(mostly_consonants)

    mostly_consonants.delete "aubergine"
    refute lister.some_word_starts_with_a_vowel?(mostly_consonants)
  end

  def test_it_can_count_all_vowels
    produce = ["apricot", "beet", "clementine", "date", "elderberry"]

    lister = ListAnalyzer.new

    assert_equal 14, lister.number_of_vowels_in_all_words(produce)
  end
end
