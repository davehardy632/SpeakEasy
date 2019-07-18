class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :dsn
      t.string :product_id
      t.string :amazon_token, default: nil

      t.timestamps
    end
  end
end
