class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :name_kana
      t.string :company
      t.string :department
      t.string :email
      t.string :phone_number
      t.text :body
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamps
    end
  end
end
