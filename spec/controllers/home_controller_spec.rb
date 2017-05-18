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
    
    it 'returns the articles by search category'
      # get :index, params: { search: 'Test' }
      # expect(assigns(:category)).to be_a Category
    # end
    
  end
end
