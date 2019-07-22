class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :build_status,
             :build_state,
             :commit_messages,
             :creator

end
