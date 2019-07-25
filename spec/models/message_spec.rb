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

  it 'retrieves a number of previous messages' do
    create(:message, commit_messages: "hello there is a new commit waiting",                  creator: "John",   created_at: Time.now - (6 * 60 * 60))
    create(:message, commit_messages: "hello there is a new commit in line",                  creator: "John",   created_at: Time.now - (5 * 60 * 60))
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting again",            creator: "Ted",    created_at: Time.now - (4 * 60 * 60))
    message_4 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren", created_at: Time.now - (3 * 60 * 60))

    expect(Message.all.previous_messages(2).count).to eq(2)
    expect(Message.all.previous_messages(2).first.id).to eq(message_3.id)
    expect(Message.all.previous_messages(2).second.id).to eq(message_4.id)
  end

  it 'retrieves messages by parameter' do
    params = {
     creator: "John" 
    }
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting",                  creator: "John",   created_at: Time.now - (6 * 60 * 60))
    message_2 = create(:message, commit_messages: "hello there is a new commit in line",                  creator: "John",   created_at: Time.now - (5 * 60 * 60))
    create(:message, commit_messages: "hello there is a new commit waiting again",            creator: "Ted",    created_at: Time.now - (4 * 60 * 60))
    create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren", created_at: Time.now - (3 * 60 * 60))

    expect(Message.all.find_all_by_parameter(params).count).to eq(2)
    expect(Message.all.find_all_by_parameter(params).first.id).to eq(message_1.id)
    expect(Message.all.find_all_by_parameter(params).second.id).to eq(message_2.id)
  end
end
