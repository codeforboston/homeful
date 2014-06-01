class Client < User
  has_many :updates
  has_many :goals
  has_many :donations, through: :goals
  has_many :donors,    through: :donations

  def active_goal
    goals.where(status: 'active').last || 0
  end

  alias_attribute :name, :nickname

  def to_s
    name
  end
end

