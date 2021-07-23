class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.string :date
      t.belongs_to :user

      t.timestamps
    end
  end
end
