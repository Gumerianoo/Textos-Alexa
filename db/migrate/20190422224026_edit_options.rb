class EditOptions < ActiveRecord::Migration[5.2]
  def change
    change_table :options do |t|
      t.string :identifier
    end
  end
end
