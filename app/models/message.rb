class Message < ApplicationRecord
  validates_presence_of :build_status,
                        :build_state,
                        :commit_log,
                        :creator

  def initialize(attributes)
    @build_status = attributes[:build_status]
    @build_state = attributes[:build_state]
    @commit_log = attributes[:commit_log]
    @creator = attributes[:creator]
  end
end
