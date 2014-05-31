class Partner < User
  has_many :clients, class_name: "Client", foreign_key: :partner_id
end
