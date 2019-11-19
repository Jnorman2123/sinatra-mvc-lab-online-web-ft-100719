class PigLatinizer

  def initialize

  end

  def piglatinize(text)
    split_text = text.split
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
      if vowels.include?(split_text[0])
        split_text + "way"
      elsif consonants.include?(split_text[0]) && consonants.include?(split_text[1]) && consonants.include?(split_text[2])
        split_text[3..-1] + split_text[0..2] + "way"
      elsif consonants.include?(split_text[0]) && consonants.include?(split_text[1])
        split_text[2..-1] + split_text[0..1] + "way"
      elsif split_text[0..1] == "qu"
        split_text[2..-1] + split_text[0..1] + "way"
      elsif consonants.include?(@text[0])
        split_text[1..-1] + split_text[0] + "way"
      end
      binding.pry
  end
end
