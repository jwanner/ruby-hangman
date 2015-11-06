prompt = "> "

letters = ['a','b','c','d','e','f','g','h','i','i','j','k','l',
	'm','n','o','p','q','r','s','t','u','v','w','x','y','z']

puts "What is your word?", prompt

$secret_word = $stdin.gets.chomp

geuss_letter ="Geuss a letter"
fail_counter = 0

# ensure user only geusses one letter at a time
puts geuss_letter, prompt
letter_geuss = $stdin.gets.chomp 	
while true
	if letter_geuss.length == 1
        valid_geuss = letter_geuss 		
		break
	end		
	puts "You can only geuss 1 letter at a time, try again \n> "
	fail_counter += 1
	if fail_counter > 3  #prevent infinite loop
		puts "You die for not following instructions"
		exit
	end
end



# check to see if geuss is in the secret word
def limbs(geuss)
	if $secret_word.count(geuss) >= 1
		puts "Correct! #{geuss} is in this word 
		#{$secret_word.count(geuss)} times"
	else
		puts "Nope! You loose a limb" 

	end
end

puts limbs(valid_geuss)
# ideas for keeping track of number of limbs remaining, 
# using an incremting += and check each time if it is 
# less than x


