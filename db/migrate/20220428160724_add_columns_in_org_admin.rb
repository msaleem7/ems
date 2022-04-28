class AddColumnsInOrgAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :org_admins, :first_name, :string, default: '', null: false
    add_column :org_admins, :last_name, :string, default: '', null: false
    add_column :org_admins, :phone_number_mobile, :string, default: '', null: false
    add_column :org_admins, :gender, :integer, null: false
    add_column :org_admins, :birthday, :datetime, default: Time.current, null: false
    add_column :org_admins, :zip_code, :string, default: '', null: false
    add_column :org_admins, :address, :string, default: '', null: false
    add_reference :org_admins, :org, index: true
  end
end
