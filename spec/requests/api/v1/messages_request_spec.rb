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
end
