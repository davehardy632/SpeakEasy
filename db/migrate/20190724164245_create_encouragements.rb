class CreateEncouragements < ActiveRecord::Migration[5.2]
  def change
    create_table :encouragements do |t|
      t.string :creator
      t.text :motivation

      t.timestamps
    end
  end
end
