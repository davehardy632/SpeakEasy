class Message < ApplicationRecord
  validates_presence_of :build_status,
                        :build_state,
                        :commit_messages,
                        :creator

  # def initialize(attributes)
  #   @build_status = attributes[:build_status]
  #   @build_state = attributes[:build_state]
  #   @commit_messages = attributes[:commit_messages]
  #   @creator = attributes[:creator]
  # end
end
