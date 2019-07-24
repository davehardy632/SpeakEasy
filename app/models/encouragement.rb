class Encouragement < ApplicationRecord
  validates_presence_of :creator,
                        :motivation

end
