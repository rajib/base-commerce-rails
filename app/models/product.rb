class Product < ActiveRecord::Base
  belongs_to :category, :inverse_of => :products
  has_many :product_properties, :dependent => :destroy, :inverse_of => :product

  attr_accessible :category_attributes
  accepts_nested_attributes_for :category, :allow_destroy => true

  accepts_nested_attributes_for :product_properties, :allow_destroy => true
  attr_accessible :product_properties_attributes, :allow_destroy => true

  attr_accessible :category_id, :code, :description, :price, :title, :product_properties_ids
end
