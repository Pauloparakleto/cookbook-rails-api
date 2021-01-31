require "test_helper"

class ContactTest < ActiveSupport::TestCase

  setup do
    @contact = Contact.new
  end

  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should not save contact without first_name" do
    @contact.last_name = 'Souza'
    @contact.email = 'alparakleto@gmail.com'
    assert_not @contact.save
  end

  test "should not save contact without last_name" do
    @contact.first_name = 'Paulo'
    @contact.email = 'alparakleto@gmail.com'
    assert_not @contact.save
  end

  test "should not save contact without email" do
    @contact.first_name = 'Paulo'
    @contact.last_name = 'Souza'
    assert_not @contact.save
  end
end
