class ProductProperty < ActiveRecord::Base
  attr_accessible :product_id, :title, :value

  belongs_to :product, :inverse_of => :product_properties

  validates :title, presence: true
  validates :value, presence: true
end
