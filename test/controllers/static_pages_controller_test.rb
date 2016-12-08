require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
		@base_title="Ruby on Rails Tutorial Sample App"
		
	end
  test "should get yenetta" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Yenetta| #{@base_title}"
  end

end
