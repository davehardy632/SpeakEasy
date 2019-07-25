class Shoutout < ApplicationRecord
  validates_presence_of :user_name,
                        :text,
                        :command



  def self.find_all_by_parameter(params)
    where(params)
  end
end
