class SiteController < ApplicationController
  def index
    @sliders = []
    show_slider = Slider.where(show_slider: true)
    show_promo = Promo.where(show_slider: true)
    show_product = Product.where(show_slider: true)
    @sliders << show_slider.all if show_slider.any?
    @sliders << show_promo.all if show_promo.any?
    @sliders << show_product.all if show_product.any?
    @sliders.flatten!
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
