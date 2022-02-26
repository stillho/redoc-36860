class CreateConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :concepts do |t|
      t.integer    :doc_id     , null: false
      t.timestamps
    end
  end
end
