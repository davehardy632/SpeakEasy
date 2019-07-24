class Message < ApplicationRecord
  validates_presence_of :build_status,
                        :build_state,
                        :commit_messages,
                        :creator


  def self.recent_by_hours(hours)
    require 'pry'; binding.pry
  end
end
