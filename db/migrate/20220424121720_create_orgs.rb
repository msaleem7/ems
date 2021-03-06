class CreateOrgs < ActiveRecord::Migration[6.1]
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :phone_number, null: false, default: ''
      t.string :email, null: false, default: ''
      t.timestamps
    end
  end
end
