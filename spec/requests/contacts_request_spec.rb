require 'rails_helper'

RSpec.describe V1::ContactsController, type: :controller do
    describe "Get index" do
        before do
            get :index
        end
        
        it "returns http ok" do
            expect(response).to have_http_status(:ok)
        end

        it "response body keys must match contact attributes" do
            json_hash = JSON.parse(response.body)
            expect(json_hash['contacts']).to include('first_name')

        end
    end

end
