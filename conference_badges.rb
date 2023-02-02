# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map { |attendee| badge_maker(attendee) }
end

def assign_rooms(attendees)
  attendees.map.with_index(1) do |attendee, room_num|
    "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each { |badge| puts badge }
  assign_rooms(attendees).each { |room_assignment| puts room_assignment }
end