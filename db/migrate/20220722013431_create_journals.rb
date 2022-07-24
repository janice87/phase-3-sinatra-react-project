class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.date :date
      t.text :content
      t.timestamps
    end
  end
end
