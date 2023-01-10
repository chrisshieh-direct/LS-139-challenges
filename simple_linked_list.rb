class SimpleLinkedList
  def initialize
    @elements = []
  end

  def size
    @elements.length
  end

  def empty?
    @elements.empty?
  end

  def push(int)
    next_element = self.head
    @elements << Element.new(int, next_element)
  end

  def peek
    return nil if @elements.empty?
    @elements.last.datum
  end

  def head
    @elements.last
  end

  def pop
    @elements.pop.datum
  end

  def self.from_a(arr)
    return SimpleLinkedList.new if arr.nil? || arr.empty?
    bob = SimpleLinkedList.new
    arr.reverse.each do |item|
      bob.push(item)
    end
    bob
  end

  def to_a
    output = []
    @elements.each { |x| output << x.datum }
    output.reverse
  end

  def reverse
    SimpleLinkedList.from_a(self.to_a.reverse)
  end
end

class Element
  def initialize(int, next_element = nil)
    @datum = int
    @next_element = next_element
  end

  def datum
    @datum
  end

  def next
    @next_element
  end

  def tail?
    @next_element.nil?
  end
end
