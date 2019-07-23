class CreateShoutouts < ActiveRecord::Migration[5.2]
  def change
    create_table :shoutouts do |t|
      t.string :sender
      t.string :sent_to
      t.string :message

      t.timestamps
    end
  end
end
