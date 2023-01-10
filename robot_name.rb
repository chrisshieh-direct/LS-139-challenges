require 'set'

class Robot
  @@unique_names = Set.new

  def initialize
    @name = ''
    make_name
  end

  def make_name
    loop do
      new_name = "#{rand(65..90).chr}#{rand(65..90).chr}#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"
      unless @@unique_names.include?(new_name)
        @@unique_names << new_name
        @name = new_name
        break
      end
    end
  end

  def reset
    @@unique_names.delete(@name)
    make_name
  end

  def name
    @name
  end
end
