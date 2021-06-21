class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.text :fio
      t.text :phone_number
      t.text :additional_phone_number

      t.belongs_to :role, foreign_key:true
      t.belongs_to :users, foreign_key:true
      t.timestamps
    end
  end
end
