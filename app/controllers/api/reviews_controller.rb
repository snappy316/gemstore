module API
  class ReviewsController < ApplicationController
    def create
      review = Review.new(review_params)
      if review.save
        render json: review, status: 201, location: api_product_review_path(review.product_id, review)
      else
        render json: review.errors, status: 422
      end
    end

    def destroy
      review = Review.find(params[:id])
      review.destroy
      head 204
    end

    private

    def review_params
      params.require(:review).permit(:stars, :body, :author, :product_id)
    end
  end
end
