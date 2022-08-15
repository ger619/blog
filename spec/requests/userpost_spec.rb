require 'rails_helper'

RSpec.describe 'Userposts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/userpost/index'
      expect(response).to have_http_status(:success)
    end
  end
end
