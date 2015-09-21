class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @words = @text.split
  end

  def word_count
    @words.count
  end

  def sorted_unique_words
    @words.map { |word| word.downcase.gsub(/[.!?,]/, "")}.
           uniq.
           sort
  end

  def number_of_words_shorter_than
  end
end
