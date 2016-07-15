# Wordlistgenerator can be used to generate full wordlists for use by programs
# such as host, DNSMap, etc.
module Wordlist
  # Generator is the class in charge of actually generating the wordlists
  class Generator
    def letters(qty, first, last)
      (first.downcase..last.downcase * qty).to_a
    end

    def numbers(min, max)
      (min..max).to_a
    end

    def gen_letters(qty, first, last)
      letters(qty, first, last).each do |letter|
        puts letter
      end
    end

    def gen_numbers(min, max)
      numbers(min, max).each do |number|
        puts number
      end
    end

    def gen_mixed(qty, first, last, min, max)
      numbers = gen_numbers(min, max)
      letters = gen_letters(qty, first, last)

      letters.map do |letter|
        numbers.each do |number|
          puts "#{number}#{letter}"
        end
      end

      letters.map do |letter|
        numbers.each do |number|
          puts "#{letter}#{number}"
        end
      end
    end
  end
end
