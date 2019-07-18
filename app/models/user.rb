class User < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :dsn
  validates_presence_of :product_id


end
