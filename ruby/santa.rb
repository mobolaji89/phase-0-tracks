#define class santa
class Santa

    #initialize method
    def initialize
       return "Initializing Santa instance..."
    end
    
    #speak method
    def speak
        return "Ho, ho, ho! Haaaappy holidays!"
    end
    
    #eat milk and cookies method
    def eat_milk_and_cookies(type)
    	return "That was a good #{type}"
    end

end

santa_claus = Santa.new
p santa_claus.speak
p santa_claus.eat_milk_and_cookies("snickerdoodle")
