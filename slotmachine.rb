#This program simulates a very simple three wheel slot machine

require 'win32/sound' #these two lines allow access to sounds uisng sound.play below. it was
					#necessary to install the win32/sound gem to make this work (gem install win32-sound --platform=ruby)
include Win32

pot = 100 #Player starts with 100 tokens

print "This is a three wheel slot machine, \n" #These lines tell the player how to play the game
print "You start the game with 100 tokens, \n"

print "The payout per token wagered is as follows: \n"
print "3 cherries = 1000 tokens \n"
print "3 bananas  = 100 tokens \n" 
print "3 grapes   = 25  tokens \n"
print "3 apples   = 10  tokens \n"
print "2 cherries =  5  tokens \n"
print "1 cherry   =  1  token \n"

print "How many tokens do you want to wager? \n" #Asks for a wager
wager = Integer(gets.chomp)  #establishes variable to capture the wager from the screen


while wager > 0 do  #starts a long loop that will continue as long as the player 
					# has tokens and continues to wager

pot = pot - wager   #removes wager value from pot


	#the followingline establishes an array containing the fruits 4-apples. 3 grapes, 2 bananas 1 cherry
fruit = ["apple", "apple", "apple", "apple", "grape", "grape", "grape", "banana", "banana", "cherry"]
sample1 = fruit.shuffle.pop  #sample1-3 shuffles the array and pulls off the last item in the array

sample2 = fruit.shuffle.pop

sample3 = fruit.shuffle.pop

Sound.play("c:\\windows\\media\\recycle.wav") #plays a sound prior to printing sample1 to screen
	print "\n", sample1 
	
Sound.play("c:\\windows\\media\\recycle.wav") #plays a sound prior to printing sample2 to screen
	print "\t", sample2 
	
	Sound.play("c:\\windows\\media\\recycle.wav") ##plays a sound prior to printing sample3 to screen
	print "\t", sample3, "\n\n"
	sleep(0.3) #pauses program for .3 sec
if sample1 == "apple" && sample2 == "apple" && sample3 == "apple" #if 3 apples are received this if prints congrats, plays sound and adds winnings to pot
		
		print "\n CONGRATULATIONS!! You won #{wager * 10} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm01.wav")
		pot = pot + (wager * 10)
																		
	elsif 																#if 3 grapes are received this if prints congrats, plays sound and adds winnings to pot
	sample1 == "grape" && sample2 == "grape" && sample3 == "grape"
		
		print "\n CONGRATULATIONS!! You won #{wager * 25} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm02.wav")
		pot = pot + (wager * 25)
						
	elsif 																#if 3 bananas are received this if prints congrats, plays sound and adds winnings to pot
	sample1 == "banana" && sample2 == "banana" && sample3 == "banana"
		
		print "\n CONGRATULATIONS!! You won #{wager * 100} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm03.wav")
		pot = pot + (wager * 100)
	
	elsif 																#if 3 cherries are received this if prints congrats, plays sound and adds winnings to pot
	sample1 == "cherry" && sample2 == "cherry" && sample3 == "cherry"
		
		print "\n CONGRATULATIONS!! You won #{wager * 1000} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm04.wav")
		pot = pot + (wager * 1000)
	
	elsif 
	(sample1 == "cherry" && sample2 == "cherry") || (sample1 == "cherry" && sample3 == "cherry") || (sample2 == "cherry" && sample3 == "cherry")
		print "\n CONGRATULATIONS!! You won #{wager * 5} tokens \n\n"
		Sound.play("c:\\Windows\\media\\chimes.wav")
		pot = pot + (wager * 5)

	elsif 
	sample1 == "cherry" || sample2 == "cherry" || sample3 == "cherry"
		print "\n CONGRATULATIONS!! You won #{wager * 1} tokens \n\n"
		Sound.play("c:\\Windows\\media\\tada.wav")
		pot = pot + (wager * 1)

		

end

	if pot <= 0 									#if pot is empty these three lines are accessed and the program ends
   		 print "You have no tokens left \n"
    	 abort ("Thanks for playing")
	end    
print "You have #{pot} tokens remaining \n"	#indicates how many tokens are in the pot

print "\nTo play again enter an amount. Enter 0 to quit playing. \n"  #asks player if they wish to play again
wager = Integer(gets.chomp)     #acepts wager for 2nd and any subsequent bet

	
end  #ends the long loop

abort ("Thanks for playing") #ends the program and thanks the player for playing	
