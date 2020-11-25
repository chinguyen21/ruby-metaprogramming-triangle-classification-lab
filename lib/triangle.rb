
class Triangle
  # write code here
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind

    array = [@side_1, @side_2, @side_3]
    max = array.max
    if array.any? {|side| side <= 0}
        raise TriangleError
    elsif array.sum - max <= max
        raise TriangleError
    else
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif (@side_1 == @side_2 && @side_1 != @side_3) ||
        (@side_1 == @side_3 && @side_1 != @side_2) ||
        (@side_2 == @side_3 && @side_2 != @side_1)
        :isosceles
      else
        :scalene
      end
    end
    
  end
  

  class TriangleError < StandardError
  end

end


