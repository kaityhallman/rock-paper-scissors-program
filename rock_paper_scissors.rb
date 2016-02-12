# scores
user_score = computer_score = tie = 0

# Let's play!!!
puts "____________________________________________"
puts "Let's play... rock, paper, scissors!"
puts "____________________________________________"

# 3 choices - rock paper scissors
choices = ["rock", "paper", "scissors"]

# Until 5 rounds go through
while computer_score < 5 && user_score < 5
	puts "User score: #{user_score}, Computer Score: #{computer_score}"
	puts "____________________________________________"
	puts "Make your choice!"
	puts "____________________________________________"
	pick = gets.chomp.downcase

	# Set variables for choices
	computer_pick = choices.sample
	user_pick = pick

	# Prints picks to console
	if user_pick == "rock" || user_pick == "scissors" || user_pick == "paper"
		puts "User picks #{user_pick}! Computer picks #{computer_pick}!"
	# Invalid entry	
	else
		puts "You must choose rock, paper, scissors!"
		next
	end

	# Same choice
	if computer_pick == user_pick
		puts "That's what I chose. Pick another."
		tie += 1

	# User : Rock --> Scissor
	elsif user_pick == "rock" && computer_pick == "scissors"
		puts "#{user_pick} crushes #{computer_pick}!"
		user_score += 1

	# User : Paper  --> Rock
	elsif user_pick == "paper" && computer_pick == "rock"
		puts "#{user_pick} covers #{computer_pick}!"
		user_score += 1

	# User : Scissors --> Paper
	elsif user_pick == "scissors" && computer_pick == "paper"
		puts "#{user_pick} cuts #{computer_pick}!"
		user_score += 1

	# Computer : Rock --> Scissor
	elsif computer_pick == "rock" && user_pick == "scissors"
		puts "#{computer_pick} crushes #{user_pick}!"
		computer_score += 1

	# Computer : Paper --> Rock
	elsif computer_pick == "paper" && user_pick == "rock"
		puts "#{computer_pick} covers #{user_pick}!"
		computer_score += 1

	# Computer : Scissors --> Paper
	else
		puts puts "#{computer_pick} cuts #{user_pick}!"
		computer_score += 1
	end
end

# Winners
if user_score >= 5
	puts "User score: #{user_score}, Computer Score: #{computer_score}"
	puts "You win!"
else 
	puts "User score: #{user_score}, Computer Score: #{computer_score}"
	puts "Computer wins!"
end

