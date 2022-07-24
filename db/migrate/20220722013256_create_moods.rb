class CreateMoods < ActiveRecord::Migration[6.1]
  def change
    create_table :moods do |t|
      t.string :mood
      t.date :date
      t.text :win
      t.text :challenge
    end
  end
end
