class Donor < User
  has_many :donations
  has_many :goals, through: :donations
  has_many :clients, through: :goals

  alias_attribute :name, :nickname
  
  def to_s
    name
  end
end
