class SellersController < ApplicationController

  before_action :find_seller, only: [:edit, :update]
  before_action :seller, only: [:new]

  def index
    @sellers = Seller.all
  end

  def new
  end

  def create
    @seller = Seller.new(name: params[:client][:name], seller_ids: params[:client][:seller_ids])
    if @seller.save
      redirect_to sellers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    redirect_to sellers_path if @seller.update(name: params[:client][:name], seller_ids: params[:client][:seller_ids])
  end

  private

  def find_seller
    @seller = Seller.find(params[:id])
  end

  def seller_params
    params.require(:post).permit(:name, :seller_ids => [])
  end
end
