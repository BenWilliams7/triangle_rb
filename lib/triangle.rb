class Triangle
  def triCheck(side1, side2, side3)
    if (side1 + side2 <= side3) || (side2 + side3 <= side1) || (side1 + side3 <= side2)
      "This isn't a triangle"
    elsif (side1 == side2 && side1 == side3)
      "Equilateral"
    elsif (side1 == side2) || (side2 == side3) || (side1==side3)
      "Isoceles"
    else
      "Scalene"
    end
  end
end
triangle = Triangle.new()
