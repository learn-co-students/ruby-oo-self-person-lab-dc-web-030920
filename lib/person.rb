# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        if happy > 10
            @happiness = 10
        elsif happy < 0
            @happiness = 0
        else
            @happiness = happy
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end
    
    def hygiene
        @hygiene
    end
    
    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end
    
    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        #set hygiene to not be greater than 10
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    

end