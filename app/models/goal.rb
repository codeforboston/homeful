class Goal < ActiveRecord::Base
  belongs_to :client
  has_many   :donations
end
