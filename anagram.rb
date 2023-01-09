class Anagram
  def initialize(str)
    @word = str
    @letters = get_letters(str)
    @matches = []
  end

  def match(arr)
    arr.each do |item|
      next if item.downcase == @word.downcase
      @matches << item if get_letters(item) == @letters
    end
    @matches.sort!
  end

  def get_letters(str)
    str.downcase.chars.sort.join
  end
end
