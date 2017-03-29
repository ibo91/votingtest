class Voting < ActiveRecord::Base
  belongs_to :user
  belongs_to :karteikarte
  acts_as_votable 
end
