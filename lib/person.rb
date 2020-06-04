require 'pry'
class Person
	
	attr_reader :name 
	attr_accessor :bank_account, :happiness, :hygiene

	def initialize (name, bank_account=25, happiness = 8, hygiene = 8)
		@name = name
		@bank_account = bank_account
		@happiness = happiness
		@hygiene = hygiene 
	end

	def happiness=(happiness)
		@happiness = happiness
		if @happiness > 10 then @happiness = 10 end
		if @happiness < 0 then @happiness = 0 end
	end
	
	def bank_account=(bank_account)
		@bank_account = bank_account
	end

	def hygiene=(hygiene)
		@hygiene = hygiene

		if @hygiene > 10 then @hygiene = 10 end
		if @hygiene < 0 then @hygiene = 0 end
		
		# @hygiene = hygiene++ 

	end

	def happy?
		@happiness = happiness
		
		if @happiness > 7 
			true 
		else
			false
		end
	end

	def clean?
		@hygiene = hygiene
		if @hygiene > 7 
			true 
		else
			false
		end

	end

	def get_paid(salary)
		@bank_account = bank_account
		@bank_account = @bank_account + salary 
		p "all about the benjamins"
	end

	def take_bath
		self.hygiene=(hygiene + 4)

		p "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@happiness = happiness
		@hygiene = hygiene

		self.happiness=(happiness + 2) 
		self.hygiene=(hygiene - 3)

		p "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		@happiness = happiness 
		self.happiness = happiness + 3
		friend.happiness = friend.happiness+3
		p "Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		@happiness = happiness
		
		if topic == "politics"
			self.happiness = (happiness - 2)
			friend.happiness = (friend.happiness - 2)
			p "blah blah partisan blah lobbyist"
		elsif topic == "weather"			
			self.happiness = (happiness + 1)
			friend.happiness = (friend.happiness + 1)
			p "blah blah sun blah rain"
		else
			p "blah blah blah blah blah"
		end

	end

end



