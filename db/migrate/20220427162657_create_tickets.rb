class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :ticket_type, foregin_key: true, index: true
      t.timestamps
    end
  end
end
