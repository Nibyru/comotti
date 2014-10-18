class SiteController < ApplicationController
  has_mobile_fu

  def index
    @sliders = Slider.where(show_slider: true).sort_by(&:position).reverse
    @categories = Category.all
  end

  def empresa
  end

  def products
    @products = Product.all
    @categories = Category.all
  end

  def promos
    @promos = Promo.all
  end

  def contact
    @message = Message.new
  end
end
