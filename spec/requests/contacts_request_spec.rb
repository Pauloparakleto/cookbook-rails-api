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

    describe "Show action raise record not found" do
        before do
            def show
                @contact = Contact.find(3)
            end
        end

        it "must return no content on head" do
            get :show
            expect(response).to 
        end
    end

end
