class Donor < User
  has_many :donations
  has_many :goals, through: :donations
  has_many :clients, through: :goals

  def name
    nickname
  end

  def to_s
    name
  end
end
