class SiteController < ApplicationController
  def index
    @sliders = []
    @sliders << Slider.find_by_show_slider(true) << Promo.find_by_show_slider(true) << Product.find_by_show_slider(true)
    @sliders.compact!
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
  end
end
