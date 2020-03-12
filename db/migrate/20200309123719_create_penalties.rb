class CreatePenalties < ActiveRecord::Migration[6.0]
  def change
    create_table :penalties do |t|
      t.integer :target_user_id
      t.integer :count
      t.text :reason

      t.timestamps
    end
  end
end
