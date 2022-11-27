class News < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  has_many :likes
end
