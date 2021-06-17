class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.integer :contract_number
      t.text :fio
      t.integer :parent_id

      t.timestamps
    end
  end
end
