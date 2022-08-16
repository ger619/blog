require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /user/:user_id/post' do
    it 'returns http success' do
      get '/user/:user_id/'
      expect(response).to have_http_status(:success)
    end
  end
end
