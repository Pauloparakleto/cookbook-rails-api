require "test_helper"

class V1::ContactsControllerTest < ActionDispatch::IntegrationTest
    test "should get index" do
        get v1_contacts_url
        assert_response :ok
    end

    test "should get no content response to contact 3" do
        get v1_contact_url(3)
        assert_response :no_content
    end

    test "Should get v1_root as contact index" do
        get v1_root_path
        assert_response :ok
    end
   
end
