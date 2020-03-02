require "rails_helper"

RSpec.describe Idea, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
  end

  it "has a description" do
    description = Idea.create!(name: "Whatever will be will be")
    second_description = Idea.create!(name: "OMG! It's actually working")
    expect(second_description.name).to eq("OMG! It's actually working")
  end

  it "has a date" do
    date = Idea.create!(date: "14 February 2020")
    expect(idea.date). to eq("14 February 2020")
end