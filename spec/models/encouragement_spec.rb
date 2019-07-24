require "rails_helper"

RSpec.describe Encouragement do
  it "has attributes" do
    attributes =  {
      creator: "Martin",
      motivation: "You did great!"
    }

    encouragement = Encouragement.new(attributes)

    expect(encouragement.creator).to eq(attributes[:creator])
    expect(encouragement.motivation).to eq(attributes[:motivation])
  end

  it "has different attributes" do
    attributes =  {
      creator: "Sam",
      motivation: "You did amazing!"
    }

    encouragement = Encouragement.new(attributes)

    expect(encouragement.creator).to eq(attributes[:creator])
    expect(encouragement.motivation).to eq(attributes[:motivation])
  end
end
