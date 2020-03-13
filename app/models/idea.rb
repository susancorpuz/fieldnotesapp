# frozen_string_literal: true

class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments
  paginates_per 3
end
