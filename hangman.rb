require 'random_word_generator'
$prompt = "> "

$letters = ['a','b','c','d','e','f','g','h','i','j','k','l',
	'm','n','o','p','q','r','s','t','u','v','w','x','y','z']

$secret_word = RandomWordGenerator.word
$empty = " _ "
def score
	number = $secret_word.length
		for i in 1..number
			print $empty
		end			
		puts "There are #{number} letters"
		puts "Available letters: #{$letters}"
end

$geuss_letter ="Geuss a letter"	
$score = 0
$limb_score = 8
$fail_counter = 0

	def limbs(geuss)
		if $secret_word.count(geuss) >= 1
			puts "Correct! #{geuss} is in this word 
			#{$secret_word.count(geuss)} times"
			$score += $secret_word.count(geuss)
		else
			puts "Nope! You loose a limb"
			$limb_score -= 1
			$letters.delete(geuss)
		end
	end
def game	
	while true
		puts $geuss_letter
		puts score
		$prompt
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
	puts limbs($valid_geuss)
end
while true
	$score < $secret_word.length && $limb_score > 0
		puts game
	if $score == $secret_word.length
		puts "Congrats!!! You win! the word was #{$secret_word}"
		exit
	end
	if $limb_score == 0
		puts "You're dead!!! The word was #{$secret_word}"
		exit
	end
end
		





# current issues, game works.  
# If same letter is geussed more than once
# and is correct score is still incremented 
# Letter bank is working, however blank spaces 
# _ does not work
