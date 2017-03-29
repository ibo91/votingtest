class CreateFavorits < ActiveRecord::Migration
  def change
    create_table :favorits do |t|
      t.references :user, index: true
      t.references :karteikarte, index: true

      t.timestamps
    end
  end
end
