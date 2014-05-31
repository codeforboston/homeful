class Donation < ActiveRecord::Base

  belongs_to :donor
  belongs_to :client
  belongs_to :goal
end
