class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.references :conversation, index: true, foreign_key: true
      t.references :user

      t.timestamps null: false
    end
  end
end
