class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    new_str = str.split(" ")

    new_str.each do |word|

      if word.length > 4
        word = word.gsub(/[[:punct:]]/,"")
        if word.capitalize == word
          str = str.gsub(/#{word}/, "Marklar")
        else
          str = str.gsub(/#{word}/, "marklar")
        end
      end #end if word > 4

    end #end new_str.each

  str
end #end def marklar

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fib = [1,1,2]

    total = nth - 3
    total.times do |x|
      fib << ( fib[-2] + fib[-1] )
    end #end total.times

    sum  = 0
    fib.each { |x| sum += x if x.even? }
    sum
  end #end def even_fibonacci


end
