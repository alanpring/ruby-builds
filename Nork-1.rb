###        ###
####       ###
#####      ###
### ##     ###
###  ##    ###
###   ##   ###
###    ##  ###
###     ## ###
###      ##### ork 1


#  INFO  #
# Nork is a text adventure built in Ruby

=begin

TO BUILD:

- interface
- player
- Direction system - compass?
- room 1
- inventory
- characters

=end

##       ##
## START ##
##       ##


# INTERFACE #


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
player_input = gets.chomp.downcase

#for debug
puts "Player input was: #{player_input}"



##     ##
## END ##
##     ##




=begin


class Interface
  player_options = ["go north", "go east", "go south", "go west"]

  def player_help
    #make this a loop
    #print player options
    player_options.each { |i| puts i }
  end
end

#turn all input into lower case for processing
#how to handle spaces?
player_input = gets.chomp

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




# PLAYER INVENTORY #

#array or hash for this?
player_inventory = []


=end




