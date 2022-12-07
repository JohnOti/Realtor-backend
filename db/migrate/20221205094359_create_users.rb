class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :location
      t.integer :phone_number
      t.string :professional_status
      t.string :password_digest

      t.timestamps
    end
  end
end
