class AddMediaTypeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :media_type, :string
  end
end
