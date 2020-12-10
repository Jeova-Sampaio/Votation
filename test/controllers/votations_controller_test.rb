require 'test_helper'

class VotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @votation = votations(:one)
  end

  test "should get index" do
    get votations_url
    assert_response :success
  end

  test "should get new" do
    get new_votation_url
    assert_response :success
  end

  test "should create votation" do
    assert_difference('Votation.count') do
      post votations_url, params: { votation: { birthday: @votation.birthday, cpf: @votation.cpf, name: @votation.name, registration: @votation.registration, sector: @votation.sector, servidordc: @votation.servidordc, servidorgmf: @votation.servidorgmf, servidorsesec: @votation.servidorsesec } }
    end

    assert_redirected_to votation_url(Votation.last)
  end

  test "should show votation" do
    get votation_url(@votation)
    assert_response :success
  end

  test "should get edit" do
    get edit_votation_url(@votation)
    assert_response :success
  end

  test "should update votation" do
    patch votation_url(@votation), params: { votation: { birthday: @votation.birthday, cpf: @votation.cpf, name: @votation.name, registration: @votation.registration, sector: @votation.sector, servidordc: @votation.servidordc, servidorgmf: @votation.servidorgmf, servidorsesec: @votation.servidorsesec } }
    assert_redirected_to votation_url(@votation)
  end

  test "should destroy votation" do
    assert_difference('Votation.count', -1) do
      delete votation_url(@votation)
    end

    assert_redirected_to votations_url
  end
end
