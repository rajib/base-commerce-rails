class ProductImage < ActiveRecord::Base

  belongs_to :product, :inverse_of => :product_images

  attr_accessible :image, :product_id
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
