require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get course" do
    get dashboard_course_url
    assert_response :success
  end

  test "should get level" do
    get dashboard_level_url
    assert_response :success
  end

  test "should get material" do
    get dashboard_material_url
    assert_response :success
  end

  test "should get analytic" do
    get dashboard_analytic_url
    assert_response :success
  end
end
