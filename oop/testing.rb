
class Tree
  def initialize
    @rings = 0
  end

  def rings
    @rings
  end

  def bear_fruit?
    if @rings > 7 and @rings < 15 
      @bear_fruit = true 
    else 
      @bear_fruit = false
    end
  end

  def bear_fruit
    @bear_fruit
  end

  def winter_season
    @rings = @rings + 1
  end
end

puts tree = Tree.new

puts
puts "After 0 winters:"
puts tree.bear_fruit?

puts

8.times do
  tree.winter_season
end

puts "After 8 winters:"
puts tree.bear_fruit?

8.times do
  tree.winter_season
end

puts
puts "After 16 winters:"
puts tree.bear_fruit?