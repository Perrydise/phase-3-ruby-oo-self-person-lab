# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_number)
       if happiness_number <= 10 && happiness_number >= 0
        @happiness = happiness_number
       elsif happiness_number > 10
        @happiness = 10
       elsif happiness_number < 0
        @happiness = 0
       end
    end

    def hygiene=(hygiene_number)
    
        puts "matt"
        if hygiene_number <= 10 && hygiene_number >= 0
            @hygiene = hygiene_number
           elsif hygiene_number > 10
            @hygiene = 10
           elsif hygiene_number < 0
            @hygiene = 0
           end
        end

        def happy?
            if @happiness > 7
                 true
            elsif @happiness <= 7
                 false
            end
        end

        def clean?
            if @hygiene > 7
                true
            elsif @hygiene <= 7
                false
            end
        end

        def get_paid(amount)
           @bank_account = @bank_account + amount
            "all about the benjamins"
        end

        def take_bath
            
            new_hygiene = @hygiene + 4
            
            self.hygiene = new_hygiene
            '♪ Rub-a-dub just relaxing in the tub ♫'
        end

        def work_out
            print @hygiene
            new_hygiene = @hygiene - 3
            print new_hygiene
            self.hygiene = new_hygiene
            new_happiness = @happiness + 2
            self.happiness = new_happiness
            '♪ another one bites the dust ♫'
        end

        def call_friend(friend)
            new_happiness = @happiness + 3
            self.happiness = new_happiness
            new_friend_happiness = friend.happiness + 3
            friend.happiness = new_friend_happiness           
            "Hi #{self.name}! It's #{friend.name}. How are you?"
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(friend, topic)
            if topic == "politics"
               
                new_happiness = @happiness - 2
                self.happiness = new_happiness
                new_friend_happiness = friend.happiness - 2
                friend.happiness = new_friend_happiness
                return 'blah blah partisan blah lobbyist'

                elsif topic == "weather"
                  
                    new_happiness = @happiness + 1
                self.happiness = new_happiness
                new_friend_happiness = friend.happiness + 1
                friend.happiness = new_friend_happiness
                return  'blah blah sun blah rain'

                elsif topic == "programming"
                    return 'blah blah blah blah blah'
                end
        end
end