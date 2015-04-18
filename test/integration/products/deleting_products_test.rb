require "test_helper"

class DeletingProductsTest < ActionDispatch::IntegrationTest
  setup { @product = Product.create(name: "TO BE DELETED") }

  test 'deletes existing product' do
    delete "/api/products/#{@product.id}"
    assert_equal 204, response.status
  end
end
