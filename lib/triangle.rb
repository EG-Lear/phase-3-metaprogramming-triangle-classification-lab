class Triangle
  attr_reader :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if l1 + l2 <= l3
      raise TriangleError
    elsif l2 + l3 <= l1
      raise TriangleError
    elsif l1 + l3 <= l2
      raise TriangleError
    elsif l1 == 0
      raise TriangleError
    elsif l2 == 0
      raise TriangleError
    elsif l3 == 0
      raise TriangleError
    elsif l1 == l2
      if l1 == l3
        :equilateral
      else
        :isosceles
      end
    elsif l1 == l3
      :isosceles
    elsif l2 == l3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
