class PigLatinizer

  def to_pig_latin(string)
    string.split.map do |word|
    if /\A[aeiou]/i.match(word)
      "#{word}ay"
    else
      "#{word.chars.rotate(1).join}ay"
    end
    end.join(' ')
  end

end
