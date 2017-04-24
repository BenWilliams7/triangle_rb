require("./lib/triangle.rb")
require("rspec")
require("pry")
describe "Triangle#triCheck" do
  triangle = Triangle.new
  it("recognizes if triangle is equilateral") do
    expect(triangle.triCheck(3,3,3)).to(eql("Equilateral"))
  end
  it("recognizes if a triangle is impossible") do
    expect(triangle.triCheck(3,3,7)).to(eql("This isn't a triangle"))
  end
  it("recognizes isoceles triangles") do
    expect(triangle.triCheck(3,3,5)).to(eql("Isoceles"))
  end
  it("recognizes scalene triangles") do
    expect(triangle.triCheck(2,3,4)).to(eql("Scalene"))
  end
end
