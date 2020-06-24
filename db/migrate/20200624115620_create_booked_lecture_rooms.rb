class CreateBookedLectureRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :booked_lecture_rooms do |t|
      t.string :name
      t.string :person
      t.date :data
      t.time :time
      t.integer :hours

      t.timestamps
    end
  end
end
