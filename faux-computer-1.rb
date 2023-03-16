#               #
# Faux Computer #
#               #
#               #
#
#
#
#START
#create class
class Computer
  #var for users
  @@users = {}
  #method to get username and password, store files
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    #for hash, set username as key, password as value
    @@users[username] = password
  end
  def create(filename)
    #var for current time
    time = Time.now
    #store time against filename
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}."
  end
  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("Charlie", "bigDawg123")
my_computer.create("favourite_humans.txt")
puts my_computer
#END