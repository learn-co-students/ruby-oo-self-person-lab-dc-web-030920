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
        if index > 10
            @hygiene = 10
        elsif index < 0
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
        @hygiene += 4
    end

  end






end

