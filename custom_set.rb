class CustomSet
  def initialize(arr = [])
    @elements = arr.uniq
  end

  def empty?
    @elements.empty?
  end

  def contains?(item)
    @elements.include?(item)
  end

  def subset?(superset)
    @elements.all? do |item|
      superset.contains?(item)
    end
  end

  def disjoint?(compare)
    return true if compare.empty? || @elements.empty?
    compare.elements.none? do |item|
      self.contains?(item)
    end
  end

  def elements
    @elements
  end

  def eql?(compare)
    @elements - compare.elements == [] && compare.elements - @elements == []
  end

  def add(item)
    @elements << item unless @elements.include?(item)
    self
  end

  def ==(compare)
    self.eql?(compare)
  end

  def intersection(compare)
    both = self.elements & compare.elements
    CustomSet.new(both)
  end

  def difference(compare)
    diff = []
    self.elements.each do |item|
      diff << item unless compare.contains?(item)
    end
    CustomSet.new(diff)
  end

  def union(compare)
    CustomSet.new(self.elements + compare.elements)
  end
end
