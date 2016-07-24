class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, limit: 25
      t.string :last_name, limit: 25
      t.string :job, limit: 50
      t.string :address_line1, limit: 100
      t.string :address_line2, limit: 100
      t.string :city, limit: 25
      t.string :country, limit: 25
      t.string :phone, limit: 25
      t.string :email, limit: 50
      t.string :twitter_acc, limit: 50

      t.timestamps null: false
    end
  end
end
