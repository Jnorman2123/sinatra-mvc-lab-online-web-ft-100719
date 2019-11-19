class PigLatinizer

  def initialize

  end

  def piglatinize(text)
    split_text = self.splits(text)
    vowels = %w[a e i o u A E I O U]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z]
    split_text.each do |word|
      piglatin_words = []
      if vowels.include?(word[0])
        word + "way"
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] + word[0..2] + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        word[2..-1] + word[0..1] + "ay"
      elsif word[0..1] == "qu"
        word[2..-1] + word[0..1] + "ay"
      elsif consonants.include?(word[0])
        word[1..-1] + word[0] + "ay"
      end
    end
  end

  def splits(text)
    text.split(" ")
  end
end
