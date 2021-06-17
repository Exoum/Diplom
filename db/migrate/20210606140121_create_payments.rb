class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.date :date
      t.integer :group_record_id
      t.integer :amount
      t.integer :status_id

      t.timestamps
    end
  end
end
