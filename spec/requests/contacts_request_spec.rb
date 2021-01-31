require 'rails_helper'

RSpec.describe V1::ContactsController, type: :controller do
    describe "Get index" do
        before do
            get :index
        end
        
        it "returns http ok" do
            expect(response).to have_http_status(:ok)
        end
    end

    describe "Show action" do
        it "returns data of an single contact" do
            get :contact, id: 1, format: :json
            parsed_response = JSON.parse(response.body)
            expect(parsed_response['id']).to_not be_nil
          end
                           
        it "must return no content on head" do
            get v1_contacts_path(Contact.first)
            expect(response).to have_http_status(:no_content)
        end
    end

end
