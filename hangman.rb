
prompt = "> "

letters = ['a','b','c','d','e','f','g','h','i','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

puts "What is your word?", prompt

secret_word = $stdin.gets.chomp
geuss_letter ="Geuss a letter"
puts geuss_letter, prompt
geuss = $stdin.gets.chomp.downcase


#issues
if geuss.length > 1
	puts "You must only enter 1 letter"
	puts geuss_letter
	guess = $stdin.gets.chomp.downcase
elsif geuss.count(letters) == 0 
	puts "You must enter a letter!",prompt
end


def limbs()
	if secret_word.count(geuss) >= 1
		puts "Correct! #{letter_geuss} is in this word 
		#{secret_word.count(letter_geuss)} times"
	else
		puts "Nope! You loose a limb" 

	end
end


