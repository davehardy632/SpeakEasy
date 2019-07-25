require 'rails_helper'

describe 'Messages Api' do
  it "sends a list of messages" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting", creator: "John")
    create(:message, commit_messages: "hello there is a new commit waiting again", creator: "Ted")
    create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren")

    get '/api/v1/messages'

    expect(response).to be_successful

    messages = JSON.parse(response.body)

    expect(messages["data"].count).to eq(3)
    expect(messages["data"][0]["attributes"]["creator"]).to eq(message_1.creator)
    expect(messages["data"][0]["attributes"]["commit_messages"]).to eq(message_1.commit_messages)
  end

  it "sends a list of messages specified by last couple of messages" do
    create(:message, commit_messages: "hello there is a new commit waiting",                  creator: "John",   created_at: Time.now - (6 * 60 * 60))
    create(:message, commit_messages: "hello there is a new commit in line",                  creator: "John",   created_at: Time.now - (5 * 60 * 60))
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting again",            creator: "Ted",    created_at: Time.now - (4 * 60 * 60))
    message_4 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren", created_at: Time.now - (3 * 60 * 60))

    get '/api/v1/recent_messages?previous=2'

    expect(response).to be_successful

    messages = JSON.parse(response.body)

    expect(messages["data"].count).to eq(2)
    expect(messages["data"][0]["attributes"]["creator"]).to eq(message_3.creator)
    expect(messages["data"][1]["attributes"]["creator"]).to eq(message_4.creator)
    expect(messages["data"][0]["attributes"]["commit_messages"]).to eq(message_3.commit_messages)
    expect(messages["data"][1]["attributes"]["commit_messages"]).to eq(message_4.commit_messages)
  end

  it "sends a messages from a specified creator" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting", creator: "John")
    create(:message, commit_messages: "hello there is a new commit waiting again", creator: "Ted")
    create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren")


    get "/api/v1/messages/find?creator=#{message_1.creator}"

    expect(response).to be_successful

    message = JSON.parse(response.body)

    expect(message["data"].count).to eq(1)
    expect(message["data"][0]["attributes"]["creator"]).to eq(message_1.creator)
    expect(message["data"][0]["attributes"]["commit_messages"]).to eq(message_1.commit_messages)
  end

  it "sends messages based on build state" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting",                  creator: "John",   build_state: "passed")
    create(:message, commit_messages: "hello there is a new commit waiting again",            creator: "Ted",    build_state: "failed")
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauran", build_state: "passed")

    get "/api/v1/messages/find?build_state=passed"

    expect(response).to be_successful

    message = JSON.parse(response.body)

    expect(message["data"].count).to eq(2)
    expect(message["data"][0]["attributes"]["creator"]).to eq(message_1.creator)
    expect(message["data"][0]["attributes"]["build_state"]).to eq(message_1.build_state)
    expect(message["data"][1]["attributes"]["creator"]).to eq(message_3.creator)
    expect(message["data"][1]["attributes"]["build_state"]).to eq(message_3.build_state)
  end

  it "sends messages based on build state" do
    create(:message, commit_messages: "hello there is a new commit waiting", creator: "John", build_state: "passed")
    message_2 = create(:message, commit_messages: "hello there is a new commit waiting again", creator: "Ted", build_state: "failed", build_status: "finished")
    create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren")

    get "/api/v1/messages/find?build_status=finished"

    expect(response).to be_successful

    message = JSON.parse(response.body)

    expect(message["data"].count).to eq(1)
    expect(message["data"][0]["attributes"]["creator"]).to eq(message_2.creator)
    expect(message["data"][0]["attributes"]["build_status"]).to eq(message_2.build_status)
  end
end
