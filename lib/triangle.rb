class Triangle
  # write code here
 attr_accessor :a_side
 attr_accessor :b_side
 attr_accessor :c_side

  def initialize(a_side, b_side, c_side)
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side
  end

  def kind
    sides = [@a_side, @b_side, @c_side]
    sides.each do |t|
      if t == 0 || t < 0
        raise TriangleError
      end
      end
    if @a_side + @b_side <= @c_side || @b_side + @c_side <= @a_side || @a_side + @c_side <= @b_side
        raise TriangleError
    end
    if @a_side == @b_side && @b_side == @c_side
      :equilateral
    elsif @a_side == @b_side || @b_side == @c_side || @a_side == @c_side
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
  end
end
