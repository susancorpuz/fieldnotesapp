# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :idea
  paginates_per 5
end
