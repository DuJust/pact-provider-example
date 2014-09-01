require 'spec_helper'
require 'api'

module PactExample
  describe API do
    include Rack::Test::Methods

    def app
      API
    end

    describe API do
      describe 'GET /models/:name' do
        it 'returns an empty array of statuses' do
          get '/models/du'
          expect(last_response.status).to eq(200)
          expect(JSON.parse(last_response.body)).to eq({'name' => 'du'})
        end
      end
    end
  end
end