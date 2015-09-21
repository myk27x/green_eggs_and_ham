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
end
