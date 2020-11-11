def badge_maker(name)
    return "Hello, my name is #{name}."
end

names = []

def batch_badge_creator(names)
    badges = []
    names.each do |name|  
    badges << badge_maker(name)
    end
    return badges
end

def assign_rooms(speakers)
    room = []
    speakers.each_with_index do |speaker, index|
    room << "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
    end
    return room
end

def printer(speaker)
    welcome = batch_badge_creator(speaker)
    welcome.each do |message|
        puts message
    end
    location = assign_rooms(speaker)
    location.each do |message|
        puts message
    end
end