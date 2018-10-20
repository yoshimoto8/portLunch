class AddUserIdToCareers < ActiveRecord::Migration[5.2]
  def change
    add_column :Careers, :user_id, :integer
  end
end
