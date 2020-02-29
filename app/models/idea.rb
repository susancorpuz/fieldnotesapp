class Idea < ApplicationRecord
    #attr accessible :content, :user id
    mount_uploader :picture, PictureUploader
    has_many :comments
    #validates :name, presence: true
end
