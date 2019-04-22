class PigLatinizer
  attr_reader :text

  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(text)
    text.split.map do |word|
      case word
      when "I"
        "Iway"
      else
        word[1..-1] + word[0] + "ay"
      end
    end.join(" ")
  end
end
