require 'rails_helper'

describe 'Shoutouts Api' do
  it "sends a list of messages" do
    shoutout_1 = Shoutout.create!(sender: "Billy", sent_to: "David", message: "this is a shoutout wow!, its working!!")
    shoutout_2 = Shoutout.create!(sender: "James", sent_to: "Billy", message: "Hello billy, this is a cordial shoutout")
    shoutout_3 = Shoutout.create!(sender: "David", sent_to: "Jamesz", message: "Shoutout to all my homies")

    get '/api/v1/shoutouts.json'

    expect(response).to be_successful

    shoutouts = JSON.parse(response.body)

    expect(shoutouts["data"].count).to eq(3)
    expect(shoutouts["data"][0]["attributes"]["sender"]).to eq("Billy")
    expect(shoutouts["data"][0]["attributes"]["message"]).to eq("this is a shoutout wow!, its working!!")
  end
end
