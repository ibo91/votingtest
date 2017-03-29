class AddKarteikarteToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :karteikarte, index: true
  end
end
