require 'spec_helper'

describe Need do
  context 'associations' do
    it {should belong_to :client}
  end
end
