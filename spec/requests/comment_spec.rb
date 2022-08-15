require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  describe 'GET /comment' do
    it 'returns http success' do
      get '/comment/comment'
      expect(response).to have_http_status(:success)
    end
  end
end
