class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.text :title
      t.text :description
      t.date :publication_date

      t.timestamps
    end
  end
end
