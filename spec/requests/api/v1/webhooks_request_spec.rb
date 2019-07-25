require 'rails_helper'

describe 'Webhooks Api' do
  it "sends a list of messages" do
    message_1 = create(:message, commit_messages: "hello there is a new commit waiting",                  creator: "John")
    message_2 = create(:message, commit_messages: "hello there is a new commit in line",                  creator: "John")
    message_3 = create(:message, commit_messages: "hello there is a new commit waiting again",            creator: "Ted")
    message_4 = create(:message, commit_messages: "hello there is a new commit waiting for a third time", creator: "Lauren")

    message_params = {
      build_status: "running",
      build_state: "passed",
      commit_messages: "good",
      creator: "Billy"
    }

    get '/api/v1/webhooks_test?', params: message_params


    expect(response).to be_successful
    expect(response.status).to eq(201)

    expect(Message.count).to eq(5)
    expect(Message.last.creator).to eq(message_params[:creator])
  end
end
