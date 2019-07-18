require 'rails_helper'

describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:first_name)}
    it {should validate_presence_of(:last_name)}
    it {should validate_presence_of(:dsn)}
    it {should validate_presence_of(:product_id)}
  end
end
