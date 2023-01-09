class DNA
  def initialize(str)
    @strand = str
  end

  def hamming_distance(compare)
    differences = 0
    index = 0
    until index == [@strand.length, compare.length].min
      if @strand[index] != compare[index]
        differences += 1
      end
      index += 1
    end
    differences
  end
end
