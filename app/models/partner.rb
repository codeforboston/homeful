class Partner < User
  has_many :clients

  def name
    full_name
  end

  def to_s
    name
  end
end
