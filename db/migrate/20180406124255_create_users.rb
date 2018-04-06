class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :zip
      t.string :address
      t.string :message

      t.timestamps
    end
  end
end
