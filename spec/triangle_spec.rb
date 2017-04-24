require("./lib/triangle.rb")
require("rspec")
require("pry")
describe "Triangle#triCheck" do
  triangle = Triangle.new
  it("recognizes if triangle is equilateral") do
    expect(triangle.triCheck(3,3,3)).to(eql("equilateral"))
  end
  it("recognizes if a triangle is impossible") do
    expect(triangle.triCheck(3,3,7)).to(eql("This isn't a triangle"))
  end
end
