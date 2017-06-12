module Shout
  def self.yell_angrily(word)
    word + "!!!" + ":("
  end
  def self.yelling_happily(word)
    "!!!" + word + "!!!" + ":)"
  end
end

p Shout.yell_angrily("why??")
p Shout.yelling_happily("yay")

