class Client < User
  has_many :needs
  has_many :updates
  has_many :goals
  has_many :donations, through: :goals
  has_many :donors, through: :donations
end

