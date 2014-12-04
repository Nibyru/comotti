class SiteController < ApplicationController

  def index
    @sliders = Slider.where(show_slider: true).sort_by(&:position).reverse
    @categories = Category.all
  end

  def empresa
  end

  def products
    @products = Product.all.order(:title)
    @categories = Category.all
  end

  def show_product
    @product = Product.find(params[:id])
    respond_to do |format|
        format.js
    end
  end

  def promos
    @promos = Promo.all
  end

  def contact
    @message = Message.new
  end
end
