class Product < ActiveRecord::Base
  belongs_to :category, :inverse_of => :products
  has_many :product_properties, :dependent => :destroy, :inverse_of => :product
  has_many :product_images, :dependent => :destroy, :inverse_of => :product

  # attr_accessible :category_attributes
  # accepts_nested_attributes_for :category, :allow_destroy => true

  accepts_nested_attributes_for :product_properties, :allow_destroy => true
  attr_accessible :product_properties_attributes, :allow_destroy => true

  accepts_nested_attributes_for :product_images, :allow_destroy => true
  attr_accessible :product_images_attributes, :allow_destroy => true

  attr_accessible :category_id, :code, :description, :price, :title, :product_properties_ids, :product_images_ids

  validates :category_id, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :title, presence: true
  validates :code, presence: true, uniqueness: true
end
