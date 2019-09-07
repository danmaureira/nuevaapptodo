require 'test_helper'

class EstadosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get estados_create_url
    assert_response :success
  end

end
