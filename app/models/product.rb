class Product < ApplicationRecord
belongs_to :category

  validates :sku, presence: true
  validates :title, presence: true, length: {minimum:3, maximum:40}
  validates :price, presence: true
  validates :quantily, presence: true

  def self.search(term)
    res = []
    if term && !term.empty?
      res << Product.find_by(title: term)
    end
    res
  end
  
end
