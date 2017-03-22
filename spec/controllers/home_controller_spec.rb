require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'get #index' do 

    it 'responds with a 200 status code' do
      get :index
      expect(response).to have_http_status 200
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns all articles to @articles' do
      get :index
      expect(assigns(:articles)).to eq(Article.all)
    end

<<<<<<< HEAD
    it 'returns the articles by search category' do 
      get :index, params: { search: { name: 'Test' } }
      expect(assigns(:category)).to be_a Category
    end
    
  end
=======
    it 'returns the correct articles by category'

  end

>>>>>>> 5ed5e942ecc1a198321fb6e09ca2d0a7bc4a5fa3
end
