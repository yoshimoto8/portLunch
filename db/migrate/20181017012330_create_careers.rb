class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.string :company_name
      t.string :position
      t.datetime :period
      t.boolean :now_working
      t.text :occupation
      t.timestamps
    end
  end
end
