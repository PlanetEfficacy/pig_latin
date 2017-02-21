class PigLatinWordTranslator
  VOWELS = ['a','e','i','o','u']
  CONSONANT_CLUSTERS = ['ch', 'sm', 'sh']
  CONSONANT_ENDING = 'ay'
  VOWEL_ENDING = 'w'

  def initialize(word)
    @word = word
    @letters = word.split('')
  end

  def translate
    vowel_first? ? handle_starting_verb : handle_starting_consonant
  end

  private

  attr_reader :word
  attr_accessor :letters

  def first_letter
    word.split('').first
  end

  def vowel_first?
    VOWELS.include?(first_letter)
  end

  def handle_starting_consonant
    constonant_cluster_start? ? handle_cluster : handle_simple
  end

  def handle_simple
    letters.shift
    letters.push(first_letter).join + CONSONANT_ENDING
  end

  def constonant_cluster_start?
    CONSONANT_CLUSTERS.include?(start_cluster)
  end

  def handle_cluster
    ends_with_same_cluster? ? translate_special_cluster : translate_simple_cluster
  end

  def translate_simple_cluster
    cluster = start_cluster
    2.times { letters.shift }
    letters.push(cluster).join + CONSONANT_ENDING
  end

  def start_cluster
    letters.first(2).join
  end

  def end_cluster
    letters.last(2).join
  end

  def translate_special_cluster
    2.times { letters.shift }
    letters.join + CONSONANT_ENDING
  end

  def ends_with_same_cluster?
    start_cluster == end_cluster
  end

  def handle_starting_verb
    word + VOWEL_ENDING + CONSONANT_ENDING
  end
end
