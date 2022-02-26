class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.integer    :doc_id     , null: false
      t.timestamps
    end
  end
end
