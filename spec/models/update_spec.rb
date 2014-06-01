require 'spec_helper'

describe Update do
  context 'associations' do
    it {should belong_to :client}
  end
end
