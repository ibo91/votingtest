class Favorit < ActiveRecord::Base
  belongs_to :user
  belongs_to :karteikarte
end
