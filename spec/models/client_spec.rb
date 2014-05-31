require 'spec_helper'

describe Client do
  context 'associations' do
    it {should have_many :needs}
    it {should have_many :updates}
    it {should have_many :goals}
    it {should have_many(:donations).through(:goals)}
    it {should have_many(:donors).through(:donations)}
  end
end
