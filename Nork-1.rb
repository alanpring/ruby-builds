###        ###
####       ###
#####      ###
### ##     ###
###  ##    ###
###   ##   ###
###    ##  ###
###     ## ###
###      ##### ork 1

# v0.1.0

# REFERENCES #

# https://www.youtube.com/watch?v=wMJ6lxgT-mE&t=2s

#  INFO  #
# Nork is a text adventure built in Ruby
# zombie?

=begin

TO BUILD:

- interface
- player
- Direction system - compass?
- room 1
- inventory
- characters


Turn Process
- think how dead of winter does it...

1) chcek player is alive
2) let player leave the room
3) check for enemy in the room
4) search room
5) different types of room
6) dice roll? random number generator
7) find anything when search
8) player receive any damage? health 0 game over


ACTIONS: move, search, inventory, fight, shoot? look, listen? bandage/heal, 




=end

##       ##
## START ##
##       ##

##############################################################################################################################################

##       ##
## SETUP ##
##       ##


# PLAYER #

#player health points
player_hp = 10

#player inventory for scavenge/search results
#array or hash for this?
player_inventory = []

#has the player escaped?
player_escaped = false


# NPC #

#Non-playable character - enemy
npc_enemy = false

#Non-playable character - friendly
npc_friendly = false


# ROOM / ENVIRONMENT #

#current location
current_room = ""

#random item list for search finds
#symbols, strings or both?
random_item_list = {
  "food" => "canned beans",
  weapon_melee: "a rusted knife",
  weapon_gun: "old rifle"
}


##############################################################################################################################################

##              ##
## INTRODUCTION ##
##              ##

#Introduction info and prompt
puts "You awake in a darkened room. Your memory is foggy... "
#what large building is this? hospital? library? 
puts "A glow of cold, crisp florescent light creeps under a closed door, signalling an exit."
puts "You hear a low moaning in the distance."
puts
puts "What do you do?"
puts


##              ##
## GAME PROGRAM ##
##              ##


#while loop to run game
#while player has health and not escaped, allow actions
while player_hp > 0 and not player_escaped do
  #game code
  #will be infinite at this point
  #better way/place to define actions?
  actions = ["m -move", "s - search"]

  #enemy encounter
  if npc_enemy
    puts "A shambling corpse lunges at you"
    #turn this to module to call actions from this?
    actions << "f - fight"
  end

end


#if player wins or loses the game
puts player_hp > 0 ? "You're alive! You had #{player_hp} health points left." : "Welcome to Sucksville. You have DIED."



##     ##
## END ##
##     ##


=begin

# INTERFACE #


#need to refine this into modules, classes etc
#should go be separate command?
@player_options = ["go north", "go east", "go south", "go west"]

#print player options
def player_help
  puts "Please choose from this list of options:"
  puts ""
  #need to split array somehow and capitalize each word
  #build capitalize as a method?
  @player_options.each { |i| puts i.capitalize() }
  puts ""
end

#call player help
player_help

#capture player input as lower case
#can i use this everytime?
#how to handle spaces?
player_input = gets.chomp.downcase

#for debug
puts "Player input was: #{player_input}"


=end





=begin



  #need to store this somewhere - module? class?
  #https://www.designcise.com/web/tutorial/how-to-capitalize-first-letter-in-an-array-of-strings-in-ruby
  def capitalize_array(array)
    #update the current array with capitalize
    array.map! { | item | item[0].upcase + item[1..-1] }
    #if wanting a new array
    #new_array = array.map! { | item | item[0].upcase + item[1..-1] }
  end
  #arr = ["foo Bar", "baz", "qux"]
  #print capitalize_array(arr)

  # --------------------------
  # need to build capitalize into the below
  #add in as module and call in method?



class Interface
  player_options = ["go north", "go east", "go south", "go west"]

  def player_help
    #make this a loop
    #print player options
    player_options.each { |i| puts i }
  end
end



puts "hello alan"
puts player_help

case player_input
  #movement
  when "go north"
  else
    #error
    puts "I'm not sure what you want me to do..."
    #print list of options
end


# PLAYER #
class Player
end







=end




