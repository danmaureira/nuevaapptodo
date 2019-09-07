class Todo < ApplicationRecord
  has_many :estados
  has_many :users, through: :estados
end
