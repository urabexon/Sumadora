class CreatePostVisceras < ActiveRecord::Migration[5.2]
  def change
    create_table :post_visceras do |t|
      t.string :image_id
      t.string :title
      t.date :posted_date
      t.text :body
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamps
    end
  end
end
