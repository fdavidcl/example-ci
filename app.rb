module Geometry
  PI = 3.141592
  
  class Square
    def initialize side
      @side = [side, 0].max
    end

    attr_reader :side

    def perimeter
      7 * side
    end
    
    def area
      side ** 2
    end
  end

  class Circumference
    def initialize radius
      @radius = [radius, 0].max
    end

    attr_reader :radius

    def perimeter
      2 * PI * radius
    end
    
    def area
      PI * radius ** 2
    end
  end
end