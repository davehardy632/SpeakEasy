require "rails_helper"

RSpec.describe Message do
  it "has attributes" do
    attributes =  {
      build_status: "build.success",
      build_state: "success",
      commit_messages: "Adds table",
      creator: "martin"
    }

    message = Message.new(attributes)

    expect(message.build_status).to eq(attributes[:build_status])
    expect(message.build_state).to eq(attributes[:build_state])
    expect(message.commit_messages).to eq(attributes[:commit_messages])
    expect(message.creator).to eq(attributes[:creator])
  end

  it "has different attributes" do
    attributes =  {
      build_status: "build.failed",
      build_state: "failure",
      commit_messages: "Adds mistake",
      creator: "Joyce"
    }

    message = Message.new(attributes)

    expect(message.build_status).to eq(attributes[:build_status])
    expect(message.build_state).to eq(attributes[:build_state])
    expect(message.commit_messages).to eq(attributes[:commit_messages])
    expect(message.creator).to eq(attributes[:creator])
  end

  
end
