class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :name
      t.string :mail
      t.string :topic
      t.string :feedback_type
      t.string :comment
      t.string :os
      t.string :device
      t.string :purpose
      t.timestamps null: false
    end
  end
end
