class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :author, :text
      t.column :content_body, :text
      t.column :rating, :integer
      t.column :product_id, :integer

      t.timestamps
    end
  end
end
