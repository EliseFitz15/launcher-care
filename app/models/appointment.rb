class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  validates :doctor, presence: true
  validates :date, presence: true
  validates :timeslot, presence: true
  validates :location, presence: true
end
