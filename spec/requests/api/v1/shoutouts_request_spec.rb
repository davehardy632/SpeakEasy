require 'rails_helper'

describe 'Shoutouts Api' do
  it "sends a list of messages" do
    shoutout_1 = Shoutout.create!(user_name: "Billy", command: "David", text: "this is a shoutout wow!, its working!!")
    shoutout_2 = Shoutout.create!(user_name: "Billy", command: "David", text: "this is a shoutout wow!, its working!!")
    shoutout_3 = Shoutout.create!(user_name: "Billy", command: "David", text: "this is a shoutout wow!, its working!!")

    get '/api/v1/shoutouts'

    expect(response).to be_successful

    shoutouts = JSON.parse(response.body)

    expect(shoutouts["data"].count).to eq(3)
    expect(shoutouts["data"][0]["attributes"]["user_name"]).to eq("Billy")
    expect(shoutouts["data"][0]["attributes"]["text"]).to eq("this is a shoutout wow!, its working!!")
  end
  it "sends a messages from a specified parameter" do
    shoutout_1 = Shoutout.create!(user_name: "Billy", command: "David", text: "this is a shoutout wow!, its working!!")
    shoutout_2 = Shoutout.create!(user_name: "James", command: "David", text: "this is a shoutout wow!, its working!!")
    shoutout_3 = Shoutout.create!(user_name: "Alex", command: "David", text: "this is a shoutout wow!, its working!!")


    get "/api/v1/shoutouts/find?user_name=#{shoutout_1.user_name}"

    expect(response).to be_successful

    message = JSON.parse(response.body)

    expect(message["data"].count).to eq(1)
    expect(message["data"][0]["attributes"]["user_name"]).to eq(shoutout_1.user_name)
    expect(message["data"][0]["attributes"]["text"]).to eq(shoutout_1.text)
  end
end
