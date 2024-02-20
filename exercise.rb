class Exercise

  def self.marklar(str)
    str.split.map do |word|
      if word.length > 4
        punctuation = word.match(/\W$/) ? word[-1] : ""
        new_word = word.gsub(/\W$/, '')
        if new_word.capitalize == new_word
          "Marklar" + punctuation
        else
          "marklar" + punctuation
        end
      else
        word
      end
    end.join(" ")
  end

  def self.even_fibonacci(nth)
    fib_sequence = [1, 1]
    (2..nth-1).each do |i|
      fib_sequence << fib_sequence[i-1] + fib_sequence[i-2]
    end
    fib_sequence.select(&:even?).sum
  end

end
