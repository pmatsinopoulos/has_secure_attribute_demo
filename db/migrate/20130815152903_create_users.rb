class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :security_question, :null => false
      t.string :security_answer_digest, :null => false

      t.timestamps
    end
    add_index :users, [:username], :unique => true
  end
end
