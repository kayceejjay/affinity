class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :category
      t.integer :fee
      t.string :website
      t.string :leader_name
      t.string :rep_phone
      t.string :rep_email
      t.string :service_product
      t.boolean :receive_email

      t.timestamps
    end
  end
end
