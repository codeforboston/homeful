require 'spec_helper'

describe Goal do
  context 'associations' do
    it {should belong_to :client}
    it {should have_many :donations}
    it {should have_and_belong_to_many :needs}
  end
end
