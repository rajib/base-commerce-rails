class Category < ActiveRecord::Base
  has_many :products, :inverse_of => :category

  attr_accessible :title

  validates :title, presence: true
end
