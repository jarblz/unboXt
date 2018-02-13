class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.integer :author_id
      t.integer :receiver_id
      t.integer :connection_id

      t.timestamps
    end

    add_index :conversations, :connection_id
    add_index :conversations, :author_id
    add_index :conversations, :receiver_id
  end
end
