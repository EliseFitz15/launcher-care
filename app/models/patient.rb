class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :app_doctors, through: :appointments, source: :doctor
  has_many :relationships
  has_many :rel_doctors, through: :relationships, source: :doctor

  def doctors
    doctors = [] | rel_doctors | app_doctors
  end
end
