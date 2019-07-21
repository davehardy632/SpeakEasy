require 'factory_bot_rails'

include FactoryBot::Syntax::Methods

Message.destroy_all

create(:message)
create(:message)
create(:message)
create(:message)
create(:message)
create(:message)
