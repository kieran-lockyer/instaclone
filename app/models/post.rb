class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_one_attached :image
    
    def image_tag
        cl_image_tag(post.image.key, :width=>400, :crop=>"fit")
    end

    def thumb_tag
        cl_image_tag(post.image.key, :width=>100, :crop=>"fit")
    end
end
