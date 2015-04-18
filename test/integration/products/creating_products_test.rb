require "test_helper"

class CreatingProductsTest < ActionDispatch::IntegrationTest
  test 'creates products' do
    post '/api/products',
      { product:
        { name: 'Octagon', description: 'The ring of all rings', price: 1_000_000, sides: 8 }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type

    product = json(response.body)
    assert_equal api_product_path(product[:id]), response.location
  end

  test 'does not create products with nil titles' do
    post '/api/products',
      { product:
        { name: nil, description: 'not nil' }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
