class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :count
      t.string :short

      t.timestamps
    end
  end
end
