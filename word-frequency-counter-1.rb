#this is designed to measure the frequency of each word in a sentence e.g.
#"how how how now brown cow cow"
#
#START
#prompt for the user input
puts "Enter a phrase you'd like to analyze the word frequency of: "
#captures the user input
text = gets.chomp
#splits the user input into an array and stores it in words variable
words = text.split
#defaults the value of frequencies to 0
frequencies = Hash.new(0)
#loops through each word and adds 1 to the count against the word
#e.g. how => 1, how => 2, how => 3, now => 1
words.each { | word | frequencies[word] += 1 }
#reassign frequencies to the soted version (sort_by)
#sort frequencies in order of low to high
frequencies = frequencies.sort_by do | word, count |
  #base the sort on the count number
  count
end
#reverse the order to highest to lowest
frequencies.reverse!
#output is: [["how", 3], ["cow", 2], ["brown", 1], ["now", 1]]
#
#loop through the frequencies hash
frequencies.each do | word, count |
  #print word and count with a space inbetween. convert count to string
  puts word + " " + count.to_s
end
#END