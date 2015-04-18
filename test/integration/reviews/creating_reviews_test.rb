require "test_helper"

class CreatingReviewsTest < ActionDispatch::IntegrationTest
  setup { @product = Product.create(name: "Dodecahedron") }

  test 'creates reviews' do
    post "/api/products/#{@product.id}/reviews",
      { review:
        { stars: 5, body: 'Awesome', author: 'test@example.com', product_id: "#{@product.id}" }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type

    review = json(response.body)
    assert_equal api_product_review_path(@product.id, review[:id]), response.location
  end

  test 'does not create reviews with nil bodies' do
    post "/api/products/#{@product.id}/reviews",
      { review:
        { stars: 5, body: nil, author: 'test@example.com', product_id: "#{@product.id}" }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
