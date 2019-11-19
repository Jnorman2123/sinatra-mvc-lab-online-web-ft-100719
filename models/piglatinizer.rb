class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def split_words
    words = @text.split(" ")
  end
end
