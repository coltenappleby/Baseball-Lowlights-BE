class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :media_link
      t.string :description
      t.string :team1
      t.string :team2

      t.timestamps
    end
  end
end
