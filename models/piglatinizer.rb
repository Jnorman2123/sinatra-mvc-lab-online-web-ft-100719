class PigLatinizer

  def initialize

  end

  def piglatinize(text)
    # binding.pry
    lowercase_text = text.downcase
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
      if vowels.include?(lowercase_text[0])
        lowercase_text + "way"
      elsif consonants.include?(lowercase_text[0]) && consonants.include?(lowercase_text[1]) && consonants.include?(lowercase_text[2])
        lowercase_text[3..-1] + lowercase_text[0..2] + "ay"
      elsif consonants.include?(lowercase_text[0]) && consonants.include?(lowercase_text[1])
        lowercase_text[2..-1] + lowercase_text[0..1] + "ay"
      elsif lowercase_text[0..1] == "qu"
        lowercase_text[2..-1] + lowercase_text[0..1] + "ay"
      elsif consonants.include?(lowercase_text[0])
        lowercase_text[1..-1] + lowercase_text[0] + "ay"
      end

  end
end
