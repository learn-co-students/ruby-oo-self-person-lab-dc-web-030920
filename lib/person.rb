class Person

attr_accessor :bank_account 
attr_reader :name 

#attr_writer :name 

def initialize(name)
    @name = name 
    @bank_account = 25 
    @happiness = 8 
    @hygiene = 8 
end 


def happiness=(points)
    #if points 
    @happiness = points 
    # max = 10, min = 0 
end 

def happiness
    @happiness
end


def hygiene=(points)
    #if points 
    @hygiene = points 
    # max = 10, min = 0 
end 

def hygiene
    @hygiene
end



def happy?
     @happiness > 7 
end

def clean?
    @hygiene > 7 
end




def get_paid(salary)
    bank_account += salary 
    puts "all about the benjamjins"
end 

def take_bath 
    hygiene_points= (-4) 
    returns "Song"
end

# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean


end



