class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :app_patients, through: :appointments, source: :patient
  has_many :relationships
  has_many :rel_patients, through: :relationships, source: :patient

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :specialty, presence: true
  validates :location, presence: true

  def patients
    patients = [] | rel_patients | app_patients
  end
end
