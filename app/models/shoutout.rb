class Shoutout < ApplicationRecord
  validates_presence_of :sender,
                        :sent_to,
                        :message


end
