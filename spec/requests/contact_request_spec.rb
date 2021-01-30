require 'rails_helper'

RSpec.describe "Contacts routes", type: :routing do
    context 'On requesting contacts' do
        describe "GET v1_contacts_path" do
            it "Must match v1/contacts#index" do
                expect(get v1_contacts_path).to route_to("v1/contacts#index")
            end
           
        end
        describe "On get the root_path" do
            it "must match v1/contacts_path" do
                expect(get v1_root_path).to route_to("v1/contacts#index")
            end
        end
        describe "On get the contact#create path" do
            it "must match v1/contacts_path create" do
                expect(post v1_contacts_path).to route_to("v1/contacts#create")
            end
        end
    end

end

