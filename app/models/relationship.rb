class Relationship < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  validates :doctor, presence: true
  validates :patient, presence: true
end
