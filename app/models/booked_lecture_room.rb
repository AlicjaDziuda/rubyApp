require 'time'

class BookedLectureRoom < ApplicationRecord
	validates :name, :data, :time, :hours, :person, presence: true
	validates :name, :uniqueness => { :scope => :data, :scope => :time,
    :message => "Tego sala jest juz wtedy zarezerwowana" }
    validates :hours, :numericality => { :greater_than => 0 }
    validates :name, :uniqueness => { :scope => :data, :scope => (:hours + 2),
    :message => "Tego sala jest juz wtedy zarezerwowana" }
end


