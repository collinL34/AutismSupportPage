require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(first_name: 'Test', last_name: 'admin', email: 'email@mail.com', password: 'password') }

  describe 'user attributes' do

    it 'returns the users first name' do
      expect(user.first_name).to eq 'Test'
    end

    it 'returns the users full name' do 
      expect(user.full_name).to eq 'Test admin'
    end

    it 'updates and returns the users zip code' do
      user.update(zip_code: 94707)
      expect(user.zip_code).to eq 94707
    end

    it 'returns the user last name' do 
      expect(user.last_name).to eq 'admin'
    end

    it 'updates and returns the users city' do 
      user.update(city: 'Berkeley')
      expect(user.city).to eq 'Berkeley'
    end

    it 'updates returns the users address' do
      user.update(address: '722 Arlighton ave')
      expect(user.address).to eq '722 Arlighton ave'
    end

    it 'returns false when zip code is given a string instead of integer' do 
      expect(user.update(zip_code: 'string')).to eq false   
    end

    it 'returns the users email' do 
      expect(user.email).to eq 'email@mail.com'
    end

    it 'returns the users password' do
      expect(user.password).to eq 'password'
    end

    it 'updates and returns the user email' do 
      user.update(email: 'admin@gmail.com')
      expect(user.email).to eq 'admin@gmail.com'
    end

    it 'returns false when new user tries to give same email' do
      first_user = User.create(first_name: 'collin',last_name: 'shelby', email: 'email@mail.com', password: 'password', zip_code: 94707)
      new_user = User.create(first_name: 'collin',last_name: 'shelby', email: 'email@mail.com', password: 'password', zip_code: 94707)
      expect(new_user.errors.full_messages.first).to eq 'Email has already been taken'
    end

    it 'returns an error message for when a new user doesnt supply  zip_code' do
      new_user = User.create(first_name: 'collin', email: 'email@mail.com', password: 'password')
      expect(new_user.errors.full_messages.first).to eq 'Zip code is not a number'
    end

    it 'returns an error message when first name isnt given for new user' do
      new_user = User.create(last_name: 'shelby', email: 'email@mail.com', password: 'password', zip_code: 94707)
      expect(new_user.errors.full_messages.first).to eq "First name can't be blank"
    end

    it 'returns an error message for new user when they dont supply last name' do
      new_user = User.create(first_name: 'shelby', email: 'email@mail.com', password: 'password', zip_code: 94707)
      expect(new_user.errors.full_messages.first).to eq "Last name can't be blank"
    end

  end

end
