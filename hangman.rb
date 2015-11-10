require 'random_word_generator'
prompt = "> "

$letters = ['a','b','c','d','e','f','g','h','i','i','j','k','l',
	'm','n','o','p','q','r','s','t','u','v','w','x','y','z']


$secret_word = RandomWordGenerator.word
$empty = " _ "
def score(word)
	number = word.length
		for i in 1..number
			print $empty
		end			
		puts "There are #{number} letters"
		puts "Available letters: #{$letters}"
end

geuss_letter ="Geuss a letter"	

$score = 0
$limb_score = 6
puts geuss_letter, prompt
$fail_counter = 0

def game	
	while true
		letter_geuss = $stdin.gets.chomp
		if letter_geuss.length == 1
			$valid_geuss = letter_geuss
			break
		end		
		puts "You can only geuss 1 letter at a time, try again \n> "
        
		$fail_counter += 1
		if $fail_counter > 3  #prevent infinite loop
			puts "You die for not following instructions"
			exit
		end
	end
end

	def limbs(geuss)
		if $secret_word.count(geuss) >= 1
			puts "Correct! #{geuss} is in this word 
			#{$secret_word.count(geuss)} times"
			$score += $secret_word.count(geuss)
		else
			puts "Nope! You loose a limb"
			$limb_score -= 1
		end
	end

			while true
				$score < $secret_word.length && $limb_score > 0
				puts game
				if $score == $secret_word.length
					puts "Congrats!!! You win!"
			        exit
			    end
			    if $limb_score == 0
			    	puts "You're dead!!!"
			    	exit
			    end
			end
		


# ideas for keeping track of number of limbs remaining, 
# using an incremting += and check each time if it is 
# less than x

