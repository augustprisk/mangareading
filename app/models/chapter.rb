class Chapter < ApplicationRecord
  belongs_to :manga
  has_many_attached :images
end
