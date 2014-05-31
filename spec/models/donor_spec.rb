require 'spec_helper'

describe Donor do
  context 'associations' do
    it {should have_many :donations}
    it {should have_many(:goals).through(:donations)}
    it {should have_many(:clients).through(:goals)}
  end
end
