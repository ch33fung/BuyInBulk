require "test_helper"

class VariantControllerTest < ActionDispatch::IntegrationTest
  test "should get product:references" do
    get variant_product:references_url
    assert_response :success
  end

  test "should get sku" do
    get variant_sku_url
    assert_response :success
  end

  test "should get price_cents:integer" do
    get variant_price_cents:integer_url
    assert_response :success
  end
end
