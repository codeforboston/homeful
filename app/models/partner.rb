class Partner < User
  has_many :clients

  alias_attribute :name,        :full_name
  alias_attribute :description, :bio

  def to_s
    name
  end
end
