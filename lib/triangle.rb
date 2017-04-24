class Triangle
  def triCheck(side1, side2, side3)
    if (side1 == side2 && side1 == side3)
      "equilateral"
    elsif (side1 + side2 <= side3) || (side2 + side3 <= side1) || (side1 + side3 <= side2)
      "This isn't a triangle"
    else
      "omg it isn't equilateral"
    end
  end
end
