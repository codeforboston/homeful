require 'spec_helper'

describe Need do
  context 'associations' do
    it {should have_and_belong_to_many :goals}
  end
end
