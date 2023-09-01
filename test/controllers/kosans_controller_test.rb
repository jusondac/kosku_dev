require "test_helper"

class KosansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kosan = kosans(:one)
  end

  test "should get index" do
    get kosans_url
    assert_response :success
  end

  test "should get new" do
    get new_kosan_url
    assert_response :success
  end

  test "should create kosan" do
    assert_difference("Kosan.count") do
      post kosans_url, params: { kosan: { alamat: @kosan.alamat, description: @kosan.description, kabupaten_kota: @kosan.kabupaten_kota, nama: @kosan.nama, provinsi: @kosan.provinsi, rules: @kosan.rules } }
    end

    assert_redirected_to kosan_url(Kosan.last)
  end

  test "should show kosan" do
    get kosan_url(@kosan)
    assert_response :success
  end

  test "should get edit" do
    get edit_kosan_url(@kosan)
    assert_response :success
  end

  test "should update kosan" do
    patch kosan_url(@kosan), params: { kosan: { alamat: @kosan.alamat, description: @kosan.description, kabupaten_kota: @kosan.kabupaten_kota, nama: @kosan.nama, provinsi: @kosan.provinsi, rules: @kosan.rules } }
    assert_redirected_to kosan_url(@kosan)
  end

  test "should destroy kosan" do
    assert_difference("Kosan.count", -1) do
      delete kosan_url(@kosan)
    end

    assert_redirected_to kosans_url
  end
end
