#module Shout
#  def self.yell_angrily(word)
#    word + "!!!" + ":("
#  end
#  def self.yelling_happily(word)
#    "!!!" + word + "!!!" + ":)"
#  end
#end
#
#p Shout.yell_angrily("why??")
#p Shout.yelling_happily("yay")

module Shout
  def yell_angrily(word)
    word + "!!!" + ":("
  end
  def yelling_happily(word)
    "!!!" + word + "!!!" + ":)"
  end
end

class Monkey
  include Shout
end

class Parrot
  include Shout
end

monkey = Monkey.new
p monkey.yell_angrily("BANANANA")
p monkey.yelling_happily("taco")

parrot = Parrot.new
p parrot.yell_angrily("Polly, want a cracker?")
p parrot.yelling_happily("katie")


