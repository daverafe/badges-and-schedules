
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badge_messages = []
    attendees.each do |attendee|
      badge_messages << badge_maker(attendee)
    end
    badge_messages 
end

def assign_rooms(speakers)
    assigned_rooms = []
    speakers.each_with_index { |speaker, index| 
        assigned_rooms << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
    }
    assigned_rooms
end

def printer(attendees)
     batch_badge_creator(attendees).each do |attendee|
        puts attendee 
     end
     assign_rooms(attendees).each do |attendee|
        puts attendee
     end
end
