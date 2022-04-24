class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :capacity
      t.datetime :begins_at
      t.datetime :ends_at
      t.references :org, references: :org, null: false, foregin_key: true, index: true

      t.timestamps
    end
  end
end
