class Karteikarte < ActiveRecord::Base
  has_one :user
  has_one :fachgruppe
end
