class Diamond
  def self.make_diamond(str)
    @letter = str
    @rows = str.ord - 65
    @spacer = str.ord - 65
    @output = ''
    return "A\n" if str == 'A'
    self.print_top
    self.print_bottom
    @output
  end

  class << self
    private

    def print_top
      code = 65
      left_space = @spacer
      @output << "#{' ' * left_space}A#{' ' * left_space}\n"
      code += 1
      left_space -= 1
      mid_space = 1
      @rows.times do |count|
        @output << "#{' ' * left_space}#{code.chr}#{' ' * mid_space}#{code.chr}#{' ' * left_space}\n"
        left_space -= 1
        mid_space += 2
        code += 1
      end
    end

    def print_bottom
      code = @letter.ord - 1
      left_space = 1
      mid_space = (@letter.ord - 67) * 2 + 1
      (@rows - 1).times do |count|
        @output << "#{' ' * left_space}#{code.chr}#{' ' * mid_space}#{code.chr}#{' ' * left_space}\n"
        left_space += 1
        mid_space -= 2
        code -= 1
      end
      @output << "#{' ' * @spacer}A#{' ' * @spacer}\n"
    end

  end

end
