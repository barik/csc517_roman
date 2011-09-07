require_relative 'roman'

class Roman

  attr_reader :value
  protected :value

  # Double dispatch!
  def coerce(other)
    [other, @value]
  end

  def +(other)
    if Roman === other
      other = other.value
    end

    Roman.new(@value + other)
  end
end

r = 3
s = Roman.new(5)

puts "#{r} + #{s} = #{r + s}"