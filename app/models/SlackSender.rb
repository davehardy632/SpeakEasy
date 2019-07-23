class SlackSender
  def send_message(channel, text)
    resp = Faraday.post(ENV['SLACK_WEB_HOOK'], "{'channel': '#{channel}', 'text': '#{text}'}",
    "Content-Type" => "application/json")
  end 
end