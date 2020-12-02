class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :fullname, null: false
      t.string :email, null: false
      t.integer :age, null: false
      t.timestamps null: true
    end
  end
end
