require 'rails_helper'

describe User, type: :model do
  describe "validations" do
    it {should validates_presence_of(:first_name)}
    it {should validates_presence_of(:last_name)}
    it {should validates_presence_of(:dsn)}
    it {should validates_presence_of(:product_id)}
  end
end
