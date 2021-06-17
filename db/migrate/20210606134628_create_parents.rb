class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.text :fio
      t.integer :phone_number
      t.integer :additional_phone_number
      t.text :email

      t.timestamps
    end
  end
end
