class CouponsController < ApplicationController
  def index
    @coupons = Post.all
  end

  def show
    @coupon = Post.find(params[:id])
  end

  def new
    @coupon = Post.new
  end

  def create
    @coupon = Post.new
    @coupon.title = params[:title]
    @coupon.description = params[:description]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end