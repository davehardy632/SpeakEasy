FactoryBot.define do
  factory :message do
    build_status { "current_status" }
    build_state { "current_state" }
    commit_messages { "string with commit messages" }
    creator { "The worst coder" }
  end
end
