class Donation < ActiveRecord::Base

  belongs_to :donor
  belongs_to :goal

  def description
    "#{donor} gave $#{amount} to #{goal.client} towards their #{goal} goal."
  end

end
