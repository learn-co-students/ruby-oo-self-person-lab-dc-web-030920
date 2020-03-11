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

  def happiness=(index)
    if index > 10
        @happiness = 10
    elsif index < 0
        @happiness = 0
    else
        @happiness = index
    end

    def hygiene=(index)
        @hygiene = index
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene = index
        end
    end

    def happy?
        return TRUE if @happiness > 7
        FALSE
    end

    def clean?
        return TRUE if @hygiene > 7
        FALSE
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 #works by magic 
        # @hygiene += 4
        # @hygiene = 10 if @hygiene > 10
        # binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness +=3 #magic 
        self.happiness +=3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    
  end

   





end

