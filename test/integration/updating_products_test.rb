require "test_helper"

class UpdatingProductsTest < ActionDispatch::IntegrationTest
  setup { @product = Product.create!(name: 'Octagon') }

  test 'successful update' do
    patch "/api/products/#{@product.id}",
      { product: { name: "Pentagon" } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 200, response.status
    assert_equal 'Pentagon', @product.reload.name
  end

  test 'unsuccessful update on short name' do
    patch "/api/products/#{@product.id}",
      { product: { name: "Zi" } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 422, response.status
  end
end
