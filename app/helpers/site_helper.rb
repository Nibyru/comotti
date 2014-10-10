module SiteHelper
  def photo_example(category)
    offset = rand(category.products.count - 1)
    if category.products.any? && !category.products.offset(offset).first.photo.url.nil?
      puts ">>> 1"
      category.products.offset(offset).first.photo.url
    else
      puts ">>> 2"
      image_url 'category-example.jpg'
    end
  end
end
