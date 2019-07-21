class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :build_status
      t.string :build_state
      t.text :commit_log
      t.string :creator

      t.timestamps
    end
  end
end
