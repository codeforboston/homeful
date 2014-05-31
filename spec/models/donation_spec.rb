require 'spec_helper'

describe Donation do
  context 'associations' do
    it {should belong_to :goal}
    it {should belong_to :donor}
  end
end
