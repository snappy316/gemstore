require "test_helper"

class DeletingReviewsTest < ActionDispatch::IntegrationTest
  setup {
    @product = Product.create(name: "Something")
    @review = @product.reviews.create(stars: 3, body: "To be deleted")
  }
  test 'deletes existing reviews' do
    delete "/api/products/#{@product.id}/reviews/#{@review.id}"
    assert_equal 204, response.status
  end
end
