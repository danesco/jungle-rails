class ReviewsController < ApplicationController

  before_action :require_login

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    p @review
    @review.user = current_user
    @review.save!

    if @review.save
      redirect_to @review.product
    end
  end

  private
  def require_login
    unless session[:user_id]
      redirect_to new_login_url
    end
  end
  def review_params
    params.require(:review).permit(
      :description,
      :product_id,
      :rating
    )
  end
end

