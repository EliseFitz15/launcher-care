class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :app_doctors, through: :appointments, source: :doctor
  has_many :relationships
  has_many :rel_doctors, through: :relationships, source: :doctor

  validates :first_name, presence: true
  validates :last_name, presence: true

  def doctors
    doctors = [] | rel_doctors | app_doctors
  end
end
