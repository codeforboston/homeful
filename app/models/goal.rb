class Goal < ActiveRecord::Base
  belongs_to :client
  has_many   :donations
  has_and_belongs_to_many :needs
end
