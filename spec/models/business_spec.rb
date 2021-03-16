require 'rails_helper'

RSpec.describe Business, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:website) }
    it { should validate_presence_of(:us_state) }
  end
end
