class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def split_words
    @words = @text.split(" ")
  end

  def translate_to_piglatin 
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
    @words.collect do |word| 
      if vowels.include?(word[0])
        word + "way"
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] + word[0..2] + "way"
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) 
        word[2..-1] + word[0..1] + "way"
      elsif word[0..1] == "qu"
        word[2..-1] + word[0..1] + "way"
      elsif consonants.include?(word[0])
        word[1..-1] + word[0] + "way"
    end 
  end 
end
