class Karteikarte < ActiveRecord::Base
  has_one :user
  has_one :fachgruppe
  has_many :users
  acts_as_votable 
end
