require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { User.create!(first_name: 'Test', last_name: 'admin', email: 'email@mail.com', password: 'password', zip_code: 94707) }

  describe "GET #show" do

    it 'returns a 200 status code' do 
      get :show, params: { id: user.id }
      expect(response).to have_http_status 200
    end

    it 'assings the correct user as a user' do
      get :show, params: { id: user.id }
      expect(assigns(:user)).to be_a User
    end

    it 'renders the show template' do
      get :show, params: { id: user.id }
      expect(response).to render_template(:show)
    end

  end

  describe 'get #new' do

    it 'returns with a 200 status code' do 
      get :new
      expect(response).to have_http_status 200
    end

    it 'renders the correct new user template' do
      get :new
      expect(response).to render_template(:new)
    end

  end

end
