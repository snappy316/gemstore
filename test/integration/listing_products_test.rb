require "test_helper"

class ListingProductsTest < ActionDispatch::IntegrationTest
  setup { host! 'api.gemstore.dev' }

  test 'returns list of all products' do
    get '/api/products'
    assert_equal 200, response.status
    refute_empty response.body
  end

  test 'returns product by id' do
    product = Product.create!(name: 'Octagon')
    get "/api/products/#{product.id}"
    assert_equal 200, response.status

    product_response = json(response.body)
    assert_equal product.name, product_response[:name]
  end
end
