require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /post' do
    it 'returns http success' do
      get '/post/post'
      expect(response).to have_http_status(:success)
    end
  end
end
