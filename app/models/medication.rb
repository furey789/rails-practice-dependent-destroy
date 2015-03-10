class Medication < ActiveRecord::Base

  has_many :prescriptions, dependent: :destroy
  has_many :patients, through: :prescriptions

end
