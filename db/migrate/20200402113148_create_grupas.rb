class CreateGrupas < ActiveRecord::Migration[6.0]
  def change
    create_table :grupas do |t|
      t.string :name
      t.integer :semestr

      t.timestamps
    end
  end
end
