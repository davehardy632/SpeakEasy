require 'rails_helper'

describe 'Shoutouts Api' do
  it "sends a list of messages" do
    shoutout_1 = Shoutout.create!(user_name: "Billy", text: "David", command: "this is a shoutout wow!, its working!!")
    shoutout_1 = Shoutout.create!(user_name: "Billy", text: "David", command: "this is a shoutout wow!, its working!!")
    shoutout_1 = Shoutout.create!(user_name: "Billy", text: "David", command: "this is a shoutout wow!, its working!!")

    get '/api/v1/shoutouts.json'

    expect(response).to be_successful

    shoutouts = JSON.parse(response.body)

    expect(shoutouts["data"].count).to eq(3)
    expect(shoutouts["data"][0]["attributes"]["user_name"]).to eq("Billy")
    expect(shoutouts["data"][0]["attributes"]["message"]).to eq("this is a shoutout wow!, its working!!")
  end
end
