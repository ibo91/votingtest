class CreateKarteikartes < ActiveRecord::Migration
  def change
    create_table :karteikartes do |t|
      t.string :titel
      t.text :vorderseite
      t.text :rueckseite
      t.float :durchschnittsbewertung

      t.timestamps
    end
  end
end
