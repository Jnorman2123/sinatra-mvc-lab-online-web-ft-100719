class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]|
      if vowels.include?(@text[0])
        @text + "way"
      elsif consonants.include?(@text[0]) && consonants.include?(@text[1]) && consonants.include?(@text[2])
        @text[3..-1] + @text[0..2] + "way"
      elsif consonants.include?(@text[0]) && consonants.include?(@text[1])
        @text[2..-1] + @text[0..1] + "way"
      elsif @text[0..1] == "qu"
        @text[2..-1] + @text[0..1] + "way"
      elsif consonants.include?(@text[0])
        @text[1..-1] + @text[0] + "way"
      end
      binding.pry
  end
end
