class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.integer :group_number
      t.integer :schedule_id
      t.integer :course_teacher_id

      t.timestamps
    end
  end
end
