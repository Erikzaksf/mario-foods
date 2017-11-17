class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :text
      t.column :cost, :decimal, :precision => 8, :scale => 2
      t.column :origin, :text

      t.timestamps
    end
  end
end
