class CreateGroupRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :group_records do |t|
      t.integer :children_id
      t.integer :group_id
      t.integer :lesson_cost

      t.timestamps
    end
  end
end
