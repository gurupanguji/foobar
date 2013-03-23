class Pin < ActiveRecord::Base
  attr_accessible :description
  
  validates :description, presence: true
  
  # Associate with user - n:1 relationship
  belongs_to :user
  validates :user_id, presence: true #makes sure that if user_id is not present, it won't save to database. 
end
