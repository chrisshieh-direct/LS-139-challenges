class BeerSong
  def self.verse(int)
    return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n" if int == 0
    if int == 1
      number = "1 bottle"
      grab = "it"
      next_number = "no more bottles"
    elsif int == 2
      number = "2 bottles"
      grab = "one"
      next_number = "1 bottle"
    else
      number = "#{int} bottles"
      grab = "one"
      next_number = "#{int - 1} bottles"
    end
    "#{number} of beer on the wall, #{number} of beer.\nTake #{grab} down and pass it around, #{next_number} of beer on the wall.\n"
  end

  def self.verses(start, finish)
    output = ""
    start.downto(finish) do |x|
      output << "\n" unless x == start
      output << self.verse(x)
    end
    output
  end

  def self.lyrics
    self.verses(99, 0)
  end
end
