class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :app_patients, through: :appointments, source: :patient
  has_many :relationships
  has_many :rel_patients, through: :relationships, source: :patient

  def patients
    patients = [] | rel_patients | app_patients
  end
end
