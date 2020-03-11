require "rails_helper"
require "ideas"
# REVIEW: has associative value with Idea
RSpec.describe Comment, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    comment.created?.should be true
  end
end