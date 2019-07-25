class Message < ApplicationRecord
  validates_presence_of :build_status,
                        :build_state,
                        :commit_messages,
                        :creator


  def self.previous_messages(how_many_previous)
    Message.last(how_many_previous.to_i)
  end

  def self.find_all_by_parameter(params)
    Message.where(creator: params.keys.first.capitalize)
  end
end
