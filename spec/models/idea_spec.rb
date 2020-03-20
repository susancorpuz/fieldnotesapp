# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Idea, type: :model do
  it 'has a name' do # yep, you can totally use 'it'
    idea = Idea.create!(name: 'My Awesome Idea Name') # creating a new idea 'instance'
    second_idea = Idea.create!(name: 'My Second Idea Name') # creating another new idea 'instance'
    expect(second_idea.name).to eq('My Second Idea Name') # this is our expectation
  end

  it 'has a description' do
    description = Idea.create!(name: 'Whatever will be will be')
    second_description = Idea.create!(name: "OMG! It's actually working")
    expect(second_description.name).to eq("OMG! It's actually working")
  end

  it 'has a date' do
    idea = Idea.create!(created_at: '14 February 2020')
    second_idea = Idea.create!(created_at: '15 February 2020')
    expect(second_idea.created_at).to eq('15 February 2020')
  end

  it 'has an update' do
    idea = Idea.create!(updated_at: '20 February 2020')
    second_idea = Idea.create!(updated_at: '28 February 2020')
    expect(second_idea.updated_at).to eq('28 February 2020')
  end
end
