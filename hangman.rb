prompt = "> "

letters = ['a','b','c','d','e','f','g','h','i','i','j','k','l',
	'm','n','o','p','q','r','s','t','u','v','w','x','y','z']

puts "What is your word?", prompt

secret_word = $stdin.gets.chomp

geuss_letter ="Geuss a letter"
fail_counter = 0

# ensure user only geusses one letter at a time
puts geuss_letter, prompt	
while true
	if gets.chomp.length == 1
		puts "correct"		
		break
	end		
	puts "You can only geuss 1 letter at a time, try again \n> "
	fail_counter += 1
	if fail_counter > 3  #prevent infinite loop
		puts "You die for not following instructions"
		exit
	end
end

 




def limbs()
	if secret_word.count(geuss) >= 1
		puts "Correct! #{letter_geuss} is in this word 
		#{secret_word.count(letter_geuss)} times"
	else
		puts "Nope! You loose a limb" 

	end
end

# ideas for keeping track of number of limbs remaining, 
# using an incremting += and check each time if it is 
# less than x


