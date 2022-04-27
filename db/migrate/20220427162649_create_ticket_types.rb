class CreateTicketTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_types do |t|
      t.references :event, foregin_key: true, index: true
      t.string :name
      t.string :currency
      t.boolean :free_ticket
      t.timestamps
    end
  end
end
