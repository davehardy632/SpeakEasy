class CreateShoutouts < ActiveRecord::Migration[5.2]
  def change
    create_table :shoutouts do |t|
      t.string :user_name
      t.string :text
      t.string :command

      t.timestamps
    end
  end
end
