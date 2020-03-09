class Idea < ApplicationRecord
    #attr accessible :content, :user id
    mount_uploader :picture, PictureUploader
    has_many :comments
    paginates_per 6
end
