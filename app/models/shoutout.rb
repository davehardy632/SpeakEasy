class Shoutout < ApplicationRecord
  validates_presence_of :user_name,
                        :text,
                        :command
end
