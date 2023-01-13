require 'rails_helper'

RSpec.describe HealthController, type: :controller do
  render_views

  describe '#index' do
    let(:response_body) { JSON.parse(response.body) }

    before do
      get :index
    end

    it 'responds with 200 status' do
      expect(response.status).to eq(200)
    end

    it 'returns ok message' do
      expect(response_body['health']).to eq('ok')
    end
  end
end
