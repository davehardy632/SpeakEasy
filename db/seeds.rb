require 'factory_bot_rails'

include FactoryBot::Syntax::Methods

Message.destroy_all
Shoutout.destroy_all

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

create(:encouragement, creator: "user_01", motivation: "Nice job!")
create(:encouragement, creator: "user_02", motivation: "This merge sparks joy!")
create(:encouragement, creator: "user_03", motivation: "Congrats, now you can break everything again!")
create(:encouragement, creator: "user_04", motivation: "Your future self will love your clean code.")
create(:encouragement, creator: "user_05", motivation: "Nice job, you are basically Steve Jobs.")
create(:encouragement, creator: "user_06", motivation: "You are the Shakespeare of coding.")
create(:encouragement, creator: "user_07", motivation: "This might be the best code I've ever seen.")
create(:encouragement, creator: "user_08", motivation: "You should get a trophy.")
create(:encouragement, creator: "user_09", motivation: "Your code has charm and charisma.")
create(:encouragement, creator: "user_10", motivation: "Your code smells nice.")
create(:encouragement, creator: "user_10", motivation: "This merge just made a kitten happy.")
create(:encouragement, creator: "user_10", motivation: "Time for a ping pong break?")
