class PostMuscle < ApplicationRecord
  is_impressionable counter_cache: true
  attachment :image

  validates :title, length: { minimum: 10 }, uniqueness: true
  validates :body, presence: true
  validates :amazon_link, presence: true
  validates :iheab_link, presence: true
end
