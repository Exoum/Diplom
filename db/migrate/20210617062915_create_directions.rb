class CreateDirections < ActiveRecord::Migration[6.1]
  def change
    create_table :directions do |t|
      t.text :name

      t.timestamps
    end
  end
end
