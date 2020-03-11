require "rails_helper"
require "ideas"
# REVIEW: has associative value with Idea
RSpec.describe Comment, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    user_name = Comment.create!(user_name: "Pokwang")
    expect(user_name).to eq("Chocolate")
  end
end
