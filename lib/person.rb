require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        #@happiness.clamp(0,10)
        @hygiene = 8
        #@hygiene.clamp(0,10)
    end


    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness 
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene += 4
        #self.check_hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    
=begin
    def check_happiness
        if self.happiness > 10
            self.happiness = 10
        elsif self.happiness < 10
            self.happiness = 0
        end
    end

    def check_hygiene
        if self.hygiene > 10
            self.hygiene = 10
        elsif self.hygiene < 10
            self.hygiene = 0
        end
    end
=end
    #binding.pry


end