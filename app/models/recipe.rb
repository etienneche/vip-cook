class Recipe < ApplicationRecord
  has_many :ingredients, :through => :list_ingredient
end
