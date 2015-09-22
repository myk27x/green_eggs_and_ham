class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @raw_words = @text.split
    @down_and_out = @raw_words.map { |word| word.downcase.gsub(/[.!?,]/, "")}
  end

  def word_count
    @raw_words.count
  end

  def sorted_unique_words
    @down_and_out.uniq.sort
  end

  def number_of_words_shorter_than(number)
    @down_and_out.select { |word| word.length < (number)}.count
  end

  def longest_word
    @raw_words.max_by { |word| word.length }
  end

  def frequency_of_unique_words
    @down_and_out.group_by { |word| word }.
                  map { |word, frequency| [word, frequency.count] }.
                  to_h
  end
end
