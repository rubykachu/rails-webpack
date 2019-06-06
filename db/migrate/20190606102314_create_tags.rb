class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.belongs_to :post, null: false
      t.string :name, null: false
      t.string :code, null: false
      t.timestamp null: true
    end
  end
end
