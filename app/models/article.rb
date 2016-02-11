class Article < ActiveRecord::Base

  has_many :article_texts
  has_many :article_images
  has_many :article_headings
  # has_many :item_image, through: :item, source: :article_images
  # has_many :item_heading, through: :item, source: :article_headings
  # has_many :item_text, through: :item, source: :article_texts


end
