class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
