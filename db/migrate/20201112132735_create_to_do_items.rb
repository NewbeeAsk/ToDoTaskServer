class CreateToDoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_items, :primary_key => :id do |t|
      t.string :title
      t.string :description
      t.string :string
      t.integer :priority
      t.datetime :due_date
      t.integer :contact_id
      t.boolean :done
      t.index :contact_id

      t.timestamps
    end
  end
end
