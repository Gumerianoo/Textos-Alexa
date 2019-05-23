class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :main_text
    end

    create_table :options do |t|
      t.string :title
      t.text :main_text
      t.references(:story, foreign_key: true)
      t.references(:option, foreign_key: true)
    end
  end
end
