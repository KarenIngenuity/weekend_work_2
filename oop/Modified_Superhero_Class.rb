class Superhero
  attr_accessor :name :hitpoints :attack :alive
  def initialize(name, hitpoints, attack)
    @name = name
    @hitpoints = hitpoints
    @attack = attack
    @alive = true
    @has_special_tool = false
  end

  def hitpoints_modify(number)
    @hitpoints - number
  end

  def grab_tool
    @has_special_tool = true
  end

  def drop_tool
    @has_special_tool = false
  end

  def hit(recipient_superhero, attack_strength)
    recipient_superhero.hitpoints(attack_strength)
  end 

end