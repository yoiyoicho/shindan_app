class CreateAbunaiPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :abunai_posts do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
