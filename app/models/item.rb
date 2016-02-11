class Item < ActiveRecord::Base

  belong_to :article
  belong_to :article_text
  belong_to :article_image
  belong_to :article_heading

end
