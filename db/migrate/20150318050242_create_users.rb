class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.decimal :contact_no
      t.text :address
      t.integer :test_id

      t.timestamps
    end
  end
end
