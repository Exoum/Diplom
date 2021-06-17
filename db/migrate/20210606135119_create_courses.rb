class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.text :title
      t.text :description
      t.integer :age
      t.text :photo
      t.integer :sessions
      t.integer :people_in_group

      t.timestamps
    end
    add_reference :courses, :direction, index: true
  end
end
