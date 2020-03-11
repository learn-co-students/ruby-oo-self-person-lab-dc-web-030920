# your code goes here
class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        self.happiness = 8
    end
    def happiness
        if self.happiness > 10
            happiness = 10
        else self.happiness < 0
            happiness = 0
        end
    end

end