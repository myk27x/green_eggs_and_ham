class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def word_count
    @words = @text.split(" ")
    @words.count
  end
end
