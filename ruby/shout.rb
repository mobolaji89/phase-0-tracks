=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def self.yelling_happily(words)
    words + "!!!" + " :)"
   end
end

Shout.yell_angrily("I hate you")
Shout.yelling_happily("I love you")
=end

module Shout
  def yell_angrily(words)
    puts "#{words} !!! :("
  end
  
  def yelling_happily(words)
    puts "#{words} !!! :)"
  end
end

class Happy
    include Shout
end

class Angry
    include Shout
end

angry = Angry.new
angry.yell_angrily("I hate you")

happy = Happy.new
happy.yelling_happily("I love you")