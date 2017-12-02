class Article < ApplicationRecord
  # make title and body required
  validates :title, presence: true
  validates :body, presence: true
end
