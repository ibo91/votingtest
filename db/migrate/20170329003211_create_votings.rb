class CreateVotings < ActiveRecord::Migration
  def change
    create_table :votings do |t|
      t.integer :einzelbewertung
      t.references :user, index: true
      t.references :karteikarte, index: true

      t.timestamps
    end
  end
end
