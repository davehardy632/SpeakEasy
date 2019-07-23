class ShoutoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sender,
             :sent_to,
             :message

end
