require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if (happiness > 10)
            @happiness = 10
        elsif (happiness < 0)
            @happiness = 0
        else
        @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if (hygiene > 10)
            @hygiene = 10
        elsif (hygiene < 0)
            @hygiene = 0
        else
        @hygiene = hygiene
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else 
            return false
        end
    end
  

    def get_paid(amount)
        self.bank_account +=  amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=  4 
        "♪ Rub-a-dub just relaxing in the tub ♫" 

    end
    
    def work_out
        self.hygiene -=  3 
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end





    def call_friend (friend)
        friend.happiness 
    end



end
# bob = Person.new 