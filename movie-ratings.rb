#Movie Ratings
#
#
#Improvements to come:
#treat spaces as underscores for input
#validate input choice
#
#START
#hash of movies and ratings
movies = {
  man_on_fire: 5,
  superman: 4
}
#prompt
puts "Hello there. What would you like to do? Please select from these options:"
puts "'add' to add a movie."
puts "'update' to update a movie rating."
puts "'display' to display all movies."
puts "'delete' to delete a movie."
puts "'oscar' to star in your own movie..."
#capture input
choice = gets.chomp
#process the initial choice
case choice
  when "add"
    #prompt
    puts "What movie would you like to add?"
    #capture
    title = gets.chomp
    if movies[title.to_sym].nil?
      #prompt
      puts "What rating do you give this movie?"
      #capture
      rating = gets.chomp
      #add title with rating to movies hash
      #title = symbol, rating = integer
      movies[title.to_sym] = rating.to_i
      puts "Great - #{title} was added with a rating of #{rating}!"
    else
      puts "Sorry, that movie already exists in the database!"
    end
  when "update"
    puts "What movie rating would you like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Sorry, that movie isn't in the list!"
    else
      puts "Great, you want to update the rating for #{title}. What's the new rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Excellent! #{title} has been updated with a new rating of #{rating}!"
    end
  when "display"
    puts "Great, here's your movie ratings:"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Let's get erasing! What movie are we deleting?"
    title_1 = gets.chomp
    title_2 = title
    if movies[title_1.to_sym].nil?
      puts "Looks like someone beat you to it - #{title_1} is not in the database."
    else
      movies.delete(title_1.to_sym)
      puts "Found it... #{title_2} has been deleted!"
    end
  when "oscar"
    puts "Looks like you want to be a movie star..."
    #better method to achieve this
    pause = [".",".","."]
    pause.each do |i|
      sleep(1)
      print "#{i}"
    end
    sleep(1.5)
    puts ""
    puts "I like your gumption, kid. You're hired! Now get out there and act!"
  else
    puts "Sorry, #{choice} isn't an option... please try a selection from the options."
end