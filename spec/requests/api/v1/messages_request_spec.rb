require 'rails_helper'

describe 'Messages Api' do
  it "sends a list of messages" do
    message_1 = create(:message)
    message_2 = create(:message)
    message_3 = create(:message)

    get '/api/v1/messages.json'

    expect(response).to be_successful

    messages = JSON.parse(response.body)
    expect(customers["data"].count).to eq(3)
  end
end
