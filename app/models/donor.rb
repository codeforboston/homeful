class Donor < User
  has_many :donations
  has_many :goals, through: :donations
  has_many :clients, through: :goals
end
