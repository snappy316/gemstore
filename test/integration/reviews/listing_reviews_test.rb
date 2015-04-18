require "test_helper"

class ListingReviewsTest < ActionDispatch::IntegrationTest
  setup {
    @product = Product.create(name: "Something")
    @review = @product.reviews.create(stars: 3, body: "To be listed")
  }

  test 'returns list of all reviews by product id' do
    get "/api/products/#{@product.id}/reviews"
    assert_equal 200, response.status
    refute_empty response.body
  end
end
