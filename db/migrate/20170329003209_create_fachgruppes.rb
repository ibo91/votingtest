class CreateFachgruppes < ActiveRecord::Migration
  def change
    create_table :fachgruppes do |t|
      t.string :fachgruppenname
      t.references :karteikarte, index: true

      t.timestamps
    end
  end
end
