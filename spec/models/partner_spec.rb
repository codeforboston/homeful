require 'spec_helper'

describe Partner do
  context 'associations' do
    it {should have_many :clients}
  end
end
