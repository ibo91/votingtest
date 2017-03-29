class Fachgruppe < ActiveRecord::Base
  belongs_to :karteikarte
  has_many :karteikartes
end
