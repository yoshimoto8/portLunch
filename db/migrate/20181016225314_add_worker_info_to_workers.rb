class AddWorkerInfoToWorkers < ActiveRecord::Migration[5.2]
  def change
    add_column :workers, :worker_images, :string
    add_column :workers, :worker_name, :string
    add_column :workers, :one_word, :string
    add_column :workers, :want_to_do_thing, :text
    add_column :workers, :self_introduction, :text
  end
end
