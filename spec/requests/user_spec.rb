require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    it 'returns http success' do
      get '/user/user'
      expect(response).to have_http_status(:success)
    end
    it 'renders the index template' do
      get '/user/user'
      expect(response).to render_template(:show)
    end
  end
end
