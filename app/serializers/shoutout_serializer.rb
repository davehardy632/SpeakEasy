class ShoutoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_name,
             :text,
             :command

end
