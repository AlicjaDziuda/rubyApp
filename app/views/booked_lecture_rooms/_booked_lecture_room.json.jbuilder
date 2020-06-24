json.extract! booked_lecture_room, :id, :name, :person, :data, :time, :hours, :created_at, :updated_at
json.url booked_lecture_room_url(booked_lecture_room, format: :json)
