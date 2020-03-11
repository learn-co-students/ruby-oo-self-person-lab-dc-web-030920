# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= (index)
        if index > 10 
            @happiness = 10
        elsif index < 0 
            @happiness = 0 
        else 
            @happiness = index
        end
    end

    def hygiene=(index)
        if index > 10 
            @hygiene = 10
        elsif index < 0
            @hygiene = 0
        else
        @hygiene = index
        end
    end

    def happy? 
        @happiness > 7
    end 

    def clean?
        @hygiene > 7
    end

    def get_paid(num)
        @bank_account += num
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=(@happiness+3)
        friend.happiness=(friend.happiness+3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
           # binding.pry
            self.happiness=(@happiness-2)
            person.happiness=(person.happiness-2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness+1)
            person.happiness=(person.happiness+1)
            return "blah blah sun blah rain"
        elsif topic == "programming"
            return "blah blah blah blah blah"
        end
    end
    
end
