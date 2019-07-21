class Message < ApplicationRecord
  validates_presence_of :build_status,
                        :build_state,
                        :commit_log,
                        :creator

end
