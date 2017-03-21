require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(first_name: 'Test', last_name: 'admin', email: 'email@mail.com', password: 'password') }

  describe 'user elements' do

    it 'returns the users first name' do
      expect(user.first_name).to eq 'Test'
    end

    it 'returns the users full name' do 
      expect(user.full_name).to eq 'Test admin'
    end

    it 'returns the users zip code' do
      user.update(zip_code: 94707)
      expect(user.zip_code).to eq 94707
    end

  end

end
