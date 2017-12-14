require 'win32/sound'
include Win32
#@wav = "c:\\windows\\media\\chimes.wav"
pot = 100

print "This is a three wheel slot machine, \n"
print "You start the game with 100 tokens, \n"

print "The payout per token wagered is as follows: \n"
print "3 cherries = 1000 tokens \n"
print "3 bananas  = 100 tokens \n" 
print "3 grapes   = 25  tokens \n"
print "3 apples   = 10  tokens \n"
#def play(pot)

print "How many tokens do you want to wager? \n"
wager = Integer(gets.chomp)

#puts 7.chr
while wager > 0 do 
#Sound.play("c:\\windows\\media\\chimes.wav")
pot = pot - wager
fruit = ["apple", "apple", "apple", "apple", "grape", "grape", "grape", "banana", "banana", "cherry"]
sample1 = fruit.shuffle.pop

sample2 = fruit.shuffle.pop

sample3 = fruit.shuffle.pop

Sound.play("c:\\windows\\media\\recycle.wav")
	print "\n", sample1 
	
	#sleep(0.5)
Sound.play("c:\\windows\\media\\recycle.wav")
	print "\t", sample2 
	
	#sleep(0.5)
Sound.play("c:\\windows\\media\\recycle.wav")
	print "\t", sample3, "\n\n"
	sleep(0.3)
	if sample1 == "apple" && sample2 == "apple" && sample3 == "apple"
		
		print "\n CONGRATULATIONS!! You won #{wager * 10} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm01.wav")
		pot = pot + (wager * 10)
	elsif 
	sample1 == "grape" && sample2 == "grape" && sample3 == "grape"
		
		print "\n CONGRATULATIONS!! You won #{wager * 25} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm01.wav")
		pot = pot + (wager * 25)
	elsif 
	sample1 == "banana" && sample2 == "banana" && sample3 == "banana"
		
		print "\n CONGRATULATIONS!! You won #{wager * 100} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm01.wav")
		pot = pot + (wager * 100)
	elsif
	sample1 == "cherry" && sample2 == "cherry" && sample3 == "cherry"
		
		print "\n CONGRATULATIONS!! You won #{wager * 1000} tokens \n\n"
		Sound.play("c:\\Windows\\media\\alarm01.wav")
		pot = pot + (wager * 1000)
	end
if pot <= 0 
    print "You have no tokens left \n"
    abort ("Thanks for playing")
end    
print "You have #{pot} tokens remaining \n"

print "\nTo play again enter an amount. Enter 0 to quit playing. \n"
wager = Integer(gets.chomp)
#if play_again =="Y" or "y"
#	play(pot)
#else
	
end	
 abort ("Thanks for playing")	
