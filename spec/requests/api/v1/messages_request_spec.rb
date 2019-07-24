require 'rails_helper'

describe 'Messages Api' do
  it "sends a list of messages" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting", creator: "John")
    message_2 = create(:message, commit_messages: "hello there is a new commit waiting again", creator: "Ted")
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren")

    get '/api/v1/messages.json'

    expect(response).to be_successful

    messages = JSON.parse(response.body)

    expect(messages["data"].count).to eq(3)
    expect(messages["data"][0]["attributes"]["creator"]).to eq("John")
    expect(messages["data"][0]["attributes"]["commit_messages"]).to eq("hello there is a new commit waiting")
  end

  it "sends a list of messages specified by last number of hours" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting",                  creator: "John",   created_at: Time.now - (6 * 60 * 60))
    message_1 = create(:message, commit_messages: "hello there is a new commit in line",                  creator: "John",   created_at: Time.now - (5 * 60 * 60))
    message_2 = create(:message, commit_messages: "hello there is a new commit waiting again",            creator: "Ted",    created_at: Time.now - (4 * 60 * 60))
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren", created_at: Time.now - (3 * 60 * 60))

    get '/api/v1/recent_messages?hours=5'

    expect(response).to be_successful

    messages = JSON.parse(response.body)

    expect(messages["data"].count).to eq(2)
    expect(messages["data"][0]["attributes"]["creator"]).to eq("John")
    expect(messages["data"][0]["attributes"]["commit_messages"]).to eq("hello there is a new commit waiting")
  end
  
  it "sends a messages from a specified creator" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting", creator: "John")
    message_2 = create(:message, commit_messages: "hello there is a new commit waiting again", creator: "Ted")
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren")


    get "/api/v1/messages/find?creator=#{message_1.creator}"

    expect(response).to be_successful

    message = JSON.parse(response.body)

    expect(message.count).to eq(1)
    expect(message["data"]["attributes"]["creator"]).to eq("John")
    expect(message["data"]["attributes"]["commit_messages"]).to eq("hello there is a new commit waiting")

  end
end
