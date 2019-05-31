class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :author, null: false
      t.string :subject, null: false
      t.string :content, null: true
      t.datetime :publish, null: true
      t.timestamps null: false
    end
  end
end
