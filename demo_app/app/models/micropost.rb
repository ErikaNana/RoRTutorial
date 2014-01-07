class Micropost < ActiveRecord::Base
    #a micropost belongs toa user
    belongs_to :user
    #validate the length of the post
    validates :content, length: { maximum: 140 }
end