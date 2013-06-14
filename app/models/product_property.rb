class ProductProperty < ActiveRecord::Base
  attr_accessible :product_id, :title, :value

  belongs_to :product, :inverse_of => :product_properties
end
