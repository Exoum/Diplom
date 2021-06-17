class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.text :fio
      t.integer :phone_number
      t.integer :hourly_rate

      t.timestamps
    end
  end
end
