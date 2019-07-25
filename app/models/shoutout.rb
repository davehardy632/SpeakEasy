class Shoutout < ApplicationRecord
  validates_presence_of :user_name,
                        :text,
                        :command



  def self.find_all_by_parameter(params)
    where(user_name: params.keys.first.capitalize)
  end
end
