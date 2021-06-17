class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :login
      t.text :password
      t.integer :role_id

      t.timestamps
    end
  end
end
