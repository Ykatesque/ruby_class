class CowGame
	attr_accessor :dictionary

	def initialize(dictionary)
		@dictionary = File.read(dictionary)

	end


	def start
		puts "!!!!Welcome to CowGame!!!!"
		puts "Would you like to learn to play?"
		print "Type Y/N: "
		response = gets.chomp.downcase
		if response == "y"
			puts "I will choose a random word and tell you how many letters are in it."
			puts "Your mission, should you choose to accept it, is to GUESS THAT WORD."
			puts "I will tell you how many BULLS, COWS, AND SHEEP you have."
			puts "BULLS are correct letters in the correct place."
			puts "COWS are correct letters in the wrong place."
			puts "SHEEP are just wrong."
			puts "Would you like to play? Type Y/N:"
			play = gets.chomp.downcase
			if play == "y"
				guessing_game

			else
				puts "You're missing out."
				puts "Better response - WHY ARE YOU RUNNING MY PROGRAM???"
			
			end
		end
	end


	def word_select
		dictionary_array = @dictionary.split
		word_index = rand(dictionary_array.length)
		chosen_word = dictionary_array[word_index]
		#p chosen_word
	end

	def guessing_game
		word = word_select
		puts "I've chosen a word that is #{word.length} letters long."
		print "What's your first guess? " 
		guess = gets.chomp

		while guess != word
			
			check_guess(word, guess)
			print "Please guess again: "
			guess = gets.chomp

				
		end
		puts "WOW, YOU GUESSED CORRECTLY!"
		puts "That was fun. Do you want to play again?"
		print "Y/N: "
		response = gets.chomp.downcase
			if response == "y"
				guessing_game

			else
				puts "GOODBYE."

			end


	end

	def check_guess(word, guess)
		cow_count = 0
		bull_count = 0
		sheep_count = 0
		i = 0
		guess.each_char do |letter| 
			
			if letter == word[i]
			 bull_count += 1 
			elsif word.include?(letter) 
				cow_count +=1

			else
				sheep_count += 1
				
			end
      i += 1
		end	

     puts "You have #{bull_count} bulls." 
     puts "You have #{cow_count} cows."
     puts "You have #{sheep_count} sheep! BAAAA"


	end



end