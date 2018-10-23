class Portfolio < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :image
      t.integer :user_id
    end
  end
end
