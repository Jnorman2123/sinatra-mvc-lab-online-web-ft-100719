class PigLatinizer

  def initialize

  end

  def piglatinize(text)
    split_text = text.split(" ")
    vowels = %w[a e i o u A E I O U]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z]
      if vowels.include?(text[0])
        text + "way"
      elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
        text[3..-1] + text[0..2] + "ay"
      elsif consonants.include?(text[0]) && consonants.include?(text[1])
        text[2..-1] + text[0..1] + "ay"
      elsif text[0..1] == "qu"
        text[2..-1] + text[0..1] + "ay"
      elsif consonants.include?(text[0])
        text[1..-1] + text[0] + "ay"
      end
  end

  def splits(text)
    split_text = text.split(" ")
  end
end
