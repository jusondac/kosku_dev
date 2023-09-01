require "application_system_test_case"

class KosansTest < ApplicationSystemTestCase
  setup do
    @kosan = kosans(:one)
  end

  test "visiting the index" do
    visit kosans_url
    assert_selector "h1", text: "Kosans"
  end

  test "should create kosan" do
    visit kosans_url
    click_on "New kosan"

    fill_in "Alamat", with: @kosan.alamat
    fill_in "Description", with: @kosan.description
    fill_in "Kabupaten kota", with: @kosan.kabupaten_kota
    fill_in "Nama", with: @kosan.nama
    fill_in "Provinsi", with: @kosan.provinsi
    fill_in "Rules", with: @kosan.rules
    click_on "Create Kosan"

    assert_text "Kosan was successfully created"
    click_on "Back"
  end

  test "should update Kosan" do
    visit kosan_url(@kosan)
    click_on "Edit this kosan", match: :first

    fill_in "Alamat", with: @kosan.alamat
    fill_in "Description", with: @kosan.description
    fill_in "Kabupaten kota", with: @kosan.kabupaten_kota
    fill_in "Nama", with: @kosan.nama
    fill_in "Provinsi", with: @kosan.provinsi
    fill_in "Rules", with: @kosan.rules
    click_on "Update Kosan"

    assert_text "Kosan was successfully updated"
    click_on "Back"
  end

  test "should destroy Kosan" do
    visit kosan_url(@kosan)
    click_on "Destroy this kosan", match: :first

    assert_text "Kosan was successfully destroyed"
  end
end
