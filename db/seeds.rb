require 'factory_bot_rails'

include FactoryBot::Syntax::Methods

Message.destroy_all

create(:message,
       build_status: "build.running",
       build_state: "running",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Re-migrates",
       creator: "James Cape",
       created_at: "Sun, 21 Jul 2019 22:51:33 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 22:51:33 UTC +00:00"
     )

create(:message,
       build_status: "build.finished",
       build_state: "passed",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Re-migrates",
       creator: "James Cape",
       created_at: "Sun, 21 Jul 2019 22:52:02 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 22:52:02 UTC +00:00"
     )

create(:message,
       build_status: "build.running",
       build_state: "running",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Add messages table",
       creator: "James Cape",
       created_at: "Sun, 21 Jul 2019 23:00:30 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:00:30 UTC +00:00"
     )

create(:message,
       build_status: "build.finished",
       build_state: "passed",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Add messages table",
       creator: "James Cape",
       created_at: "Sun, 21 Jul 2019 23:00:59 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:00:59 UTC +00:00"
     )

create(:message,
       build_status: "build.running",
       build_state: "running",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "A single commit",
       creator: "George Foreman",
       created_at: "Sun, 21 Jul 2019 23:09:57 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:09:57 UTC +00:00"
     )

create(:message,
       build_status: "build.finished",
       build_state: "passed",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "A single commit",
       creator: "George Foreman",
       created_at: "Sun, 21 Jul 2019 23:10:26 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:10:26 UTC +00:00"
     )

create(:message,
       build_status: "build.running",
       build_state: "running",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Adds lots of code",
       creator: "Spike Johnson",
       created_at: "Sun, 21 Jul 2019 23:09:57 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:09:57 UTC +00:00"
     )

create(:message,
       build_status: "build.finished",
       build_state: "passed",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Adds lots of code",
       creator: "Spike Johnson",
       created_at: "Sun, 21 Jul 2019 23:10:26 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:10:26 UTC +00:00"
     )

create(:message,
       build_status: "build.running",
       build_state: "running",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Pours sweat and blood into this code",
       creator: "Spike Johnson",
       created_at: "Sun, 21 Jul 2019 23:20:35 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:20:35 UTC +00:00"
     )

create(:message,
       build_status: "build.finished",
       build_state: "passed",
       commit_messages: "Merge pull request #71 from davehardy632/add_messages_table\n" + "\n" + "Pours sweat and blood into this code",
       creator: "Spike Johnson",
       created_at: "Sun, 21 Jul 2019 23:21:05 UTC +00:00",
       updated_at: "Sun, 21 Jul 2019 23:21:05 UTC +00:00"
     )
