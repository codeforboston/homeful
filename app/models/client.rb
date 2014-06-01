class Client < User
  has_many :updates
  has_many :goals
  has_many :donations, through: :goals
  has_many :donors,    through: :donations

  def name
    nickname
  end

  def to_s
    name
  end
end

