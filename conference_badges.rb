# Write your code here.
# In this lab you'll be learning how to iterate through an array and output the results in different
#  ways. Write your code in the conference_badges.rb file and you can run the test suite using 
#  the learn command.
# # 
# # You're hosting a conference and need to print badges for the speakers. 
# Each badge should read: "Hello, my name is _____." 
# Write a badge_maker method that, when provided a person's name, w
# ill create and return this message. E.g.:
# badge_maker("Arel")
# => "Hello, my name is Arel."

def badge_maker(name)
  "Hello, my name is #{name}."
end

# Write a batch_badge_creator method that takes an array of names as an argument 
# and returns an array of badge messages.
badge_message =[]
  speakers.each do |name|
    badge_message << "Hello, my name is #{name}."
  end
  badge_message
end

#write a method called assign_rooms that takes the list of speakers and 
#assigns each speaker to a room. Make sure that each room only has one speaker.

#You have rooms 1-7.
#return a list of room assignments in the form of: "Hello, _____! You'll be assigned to room _____!"
# Hint: Think about how you will assign a room number to each person. Array items are indexed, meaning that you can access each element by its index number. When you are iterating through an array, you can keep track of the index number of the current iteration using an enumerator method called each_with_index.
# Hint: Remember that the return value of the each method is the original array that you are calling it on. How can you collect or store the room assignment strings you are creating as you iterate and return them at the end of your assign_rooms method? 
# 
# def batch_badge_creator(speakers)



def assign_rooms(speakers)
  room = 1;
  locations = []
  speakers.each do |name|
    locations << "Hello, #{name}! You'll be assigned to room #{room}!"
    room+= 1
  end
  locations
end

# Now you have to tell the printer what to print. 
# Create a method called printer that will output first the results of the batch_badge_creator method 
# and then of the assign_rooms method to the screen.
# 
# Hint: Remember that methods can call other methods. If the return value of assign_rooms is an array 
# of room assignments, how can you print out each assignment? You'll need to iterate 
# over your array of room assignments in order to puts out each individual assignment.
# 

def printer(speakers)

  badges = batch_badge_creator(speakers)
  locations =  assign_rooms(speakers)

  badges.each do |badge|
     puts badge
   end

   locations.each do |room|
     puts room
   end
end
