class Article < ApplicationRecord

  # make title and body required
  validates :title, presance: true
  validates :body, presance: true
end
